import 'package:flutter/material.dart';
import 'package:todo_app/core/utils/responsive_units.dart';

import '../../../controller/todo_controller/todo_provider.dart';
import '../../widget/grid_tile_widget.dart';
import 'widget/alert_box_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoListenable = TodoProvider.of(context).todoNotifier;
    return Scaffold(
      // appbar secrtion
      appBar: AppBar(
        title: const Text(
          'Todo',
        ),
      ),
      // body section
      body: ListenableBuilder(
          listenable: todoListenable,
          builder: (BuildContext context, _) {
            return GridView.builder(
              padding: EdgeInsets.symmetric(
                horizontal: context.width(0.03),
                vertical: context.height(0.02),
              ),
              itemCount: todoListenable.todList.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: context.width(0.03),
                mainAxisSpacing: context.width(0.03),
              ),
              itemBuilder: (BuildContext context, int index) =>
                  // grid tile section
                  GridTieWidget(
                id: todoListenable.todList[index].id,
                title: todoListenable.todList[index].title,
                content: todoListenable.todList[index].content,
                date: todoListenable.todList[index].date,
              ),
            );
          }),
      // add button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // alert box
          showDialog(
            context: context,
            builder: (BuildContext context) {
              // alert box
              return AlertBoxWidget(
                todoNotifier: todoListenable,
              );
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

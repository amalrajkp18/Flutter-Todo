import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/core/utils/responsive_units.dart';

import '../../../controller/todo_controller/todo_provider.dart';
import '../../../model/todo_model/todo_model.dart';

class TodoDetailsPage extends StatelessWidget {
  const TodoDetailsPage(
      {super.key, required this.title, required this.content, this.id});
  final int? id;
  final String title;
  final String content;

  @override
  Widget build(BuildContext context) {
    // controller textfield
    TextEditingController titleTexEditingController = TextEditingController();
    TextEditingController contentTexEditingController = TextEditingController();
    // assign values
    titleTexEditingController.text = title;
    contentTexEditingController.text = content;
    // todonotifier
    final todo = TodoProvider.of(context).todoNotifier;
    return Scaffold(
      // app bar section
      appBar: AppBar(
        automaticallyImplyLeading: true,
        actions: [
          // delete button
          IconButton(
            onPressed: () {
              if (!todo.delete(id!)) {
                throw e;
              }
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.delete_outline,
              color: Colors.red,
            ),
          )
        ],
      ),
      // content section
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.width(0.02),
        ),
        child: Column(
          children: [
            // title
            TextField(
              controller: titleTexEditingController,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: context.width(0.1),
              ),
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
            ),
            // content
            Expanded(
              child: TextField(
                controller: contentTexEditingController,
                decoration: const InputDecoration(border: InputBorder.none),
                maxLines: 30,
              ),
            ),
          ],
        ),
      ),
      // update button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          todo.update(
            TodoModel(
              id: id!,
              title: titleTexEditingController.text,
              content: contentTexEditingController.text,
              date: DateFormat.yMd().format(DateTime.now()),
            ),
          );
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.done,
          color: Colors.white,
        ),
      ),
    );
  }
}

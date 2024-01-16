import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:todo_app/core/utils/responsive_units.dart';

import '../../../../controller/todo_controller/todo_notifier.dart';
import '../../../../core/colors/app_colors.dart';
import '../../../../model/todo_model/todo_model.dart';

class AlertBoxWidget extends StatelessWidget {
  const AlertBoxWidget({
    key,
    required this.todoNotifier,
  }) : super(key: key);
  final TodoNotifier todoNotifier;

  @override
  Widget build(BuildContext context) {
    // textediting controller intialisation
    TextEditingController titleEditingController = TextEditingController();
    TextEditingController contentEditingController = TextEditingController();

    return AlertDialog(
      backgroundColor: AppColors.scaffoldBg,
      surfaceTintColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          context.width(0.02),
        ),
      ),
      actionsPadding: EdgeInsets.symmetric(
        horizontal: context.width(0.03),
        vertical: context.height(0.03),
      ),
      actions: [
        // pop button
        IconButton(
          style: IconButton.styleFrom(
            backgroundColor: Colors.black,
          ),
          color: Colors.white,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.close_fullscreen),
        ),
        // spacer
        SizedBox(
          height: context.height(0.03),
        ),
        // textfield for title
        TextFormField(
          controller: titleEditingController,
          decoration: InputDecoration(
            hintText: 'Enter title',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(
                context.width(0.01),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(
                context.width(0.01),
              ),
            ),
          ),
        ),
        // spacer
        SizedBox(
          height: context.height(0.03),
        ),
        TextFormField(
          controller: contentEditingController,
          maxLines: 4,
          decoration: InputDecoration(
            hintText: 'Enter content',
            hintStyle: const TextStyle(
              color: Colors.grey,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(
                context.width(0.01),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.blue,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(
                context.width(0.01),
              ),
            ),
          ),
        ),
        // spacer
        SizedBox(
          height: context.height(0.03),
        ),
        // add button
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              minimumSize: Size(
                context.height(1),
                context.height(0.06),
              )),
          onPressed: () {
            // adding data to db
            todoNotifier.create(
              TodoModel(
                id: 0,
                title: titleEditingController.text,
                content: contentEditingController.text,
                date: DateFormat.yMMMMd('en_US').format(DateTime.now()),
              ),
            );
            titleEditingController.clear();
            contentEditingController.clear();

            Navigator.pop(context);
          },
          child: Text(
            'Add',
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: context.width(0.05),
            ),
          ),
        )
      ],
    );
  }
}

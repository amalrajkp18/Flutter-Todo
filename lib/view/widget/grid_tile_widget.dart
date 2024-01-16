import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/utils/responsive_units.dart';

import '../pages/todo_details/todo_details_page.dart';

class GridTieWidget extends StatelessWidget {
  const GridTieWidget({
    super.key,
    required this.id,
    required this.title,
    required this.content,
    required this.date,
  });

  final int? id;
  final String title;
  final String content;
  final String date;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // page routing
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TodoDetailsPage(
              id: id,
              title: title,
              content: content,
            ),
          ),
        );
      },
      // content box
      child: Container(
        height: context.height(3),
        padding: EdgeInsets.symmetric(
          horizontal: context.width(0.03),
          vertical: context.height(0.01),
        ),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(
            context.width(0.05),
          ),
        ),
        // content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // title
            Text(
              title,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                fontSize: context.width(0.045),
              ),
            ),
            // spacer
            const Spacer(),
            // content
            Text(
              content,
              maxLines: 5,
              style: const TextStyle(
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // spacer
            const Spacer(
              flex: 2,
            ),
            // date
            Text(
              date,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}

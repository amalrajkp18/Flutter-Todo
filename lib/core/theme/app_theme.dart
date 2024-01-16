import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/core/colors/app_colors.dart';
import 'package:todo_app/core/utils/responsive_units.dart';

class AppTheme {
  static ThemeData appTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: GoogleFonts.poppins().fontFamily,
      scaffoldBackgroundColor: AppColors.scaffoldBg,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: AppColors.appbarBg,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        toolbarHeight: context.height(0.1),
        titleTextStyle: GoogleFonts.poppins(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: context.width(0.09),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            context.width(1),
          ),
        ),
      ),
    );
  }
}

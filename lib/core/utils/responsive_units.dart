import 'package:flutter/material.dart';

extension ResponsiveUnits on BuildContext {
  double height(double height) {
    return MediaQuery.sizeOf(this).height * height;
  }

  double width(double width) {
    return MediaQuery.sizeOf(this).width * width;
  }
}

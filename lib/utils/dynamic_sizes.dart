import 'package:flutter/material.dart';

extension DynamicSizes on BuildContext {
  double screenWidth(double w) {
    return MediaQuery.sizeOf(this).width * (w / 460);
  }

  double screenHeight(double h) {
    return MediaQuery.sizeOf(this).height * (h / 1004);
  }
}

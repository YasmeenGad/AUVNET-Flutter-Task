import 'package:flutter/material.dart';

class MediaQueryConfig {
  static late double screenWidth;
  static late double screenHeight;
  static late double blockWidth;
  static late double blockHeight;

  static late double textScaleFactor;
  static late Orientation orientation;

  static void init(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    screenWidth = mediaQueryData.size.width;
    screenHeight = mediaQueryData.size.height;
    blockWidth = screenWidth / 100;
    blockHeight = screenHeight / 100;
    textScaleFactor = mediaQueryData.textScaleFactor;
    orientation = mediaQueryData.orientation;
  }
}


import 'package:flutter/material.dart';
import 'package:gethire/sizeConfig.dart';



class Constants {
  //UI Constants
  static Size screenSize =
      MediaQueryData.fromWindow(WidgetsBinding.instance.window).size;
  static double screenHeight = screenSize.height;
  static double screenWidth = screenSize.width;
  static double bottomNavBarHeight = 70.fh;
  static double bottomNavBarIconHeight = 30.fh;
  static double appBarHeight = 60.fh;
  static double errorWidgetHeight = 100.fh;

  //API-HTTP Constants
  static const int retryCount = 3;
  static const int retryDuration = 3000; // Interval between each retry
  static const int httpConnectTimeout = 5000;

}

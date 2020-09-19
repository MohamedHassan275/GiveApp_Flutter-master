import 'package:flutter/material.dart';

class MyNavigator {
  static void goToHome(BuildContext context) {
    Navigator.pushNamed(context, "/HomeTabBar");
  }

  static void goToIntro(BuildContext context) {
    Navigator.pushNamed(context, "/LoginClient");
  }
}

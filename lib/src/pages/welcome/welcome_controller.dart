import 'package:flutter/material.dart';

class WelcomeController {
  BuildContext? context;
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  Future init(BuildContext context) async {
    this.context = context;
  }

  void login() {
    Navigator.pushNamedAndRemoveUntil(context!, '/login', (route) => false);
  }
}

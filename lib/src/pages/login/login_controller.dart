import 'package:flutter/material.dart';

class LoginController {
  BuildContext? context;
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  Future init(BuildContext context) async {
    this.context = context;
  }

  Future login() async {
    Navigator.pushNamed(context!, '/home');
  }

  void register() {
    Navigator.pushNamed(context!, '/register');
  }
}

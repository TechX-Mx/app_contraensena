import 'package:flutter/material.dart';

class RegisterController {
  BuildContext? context;
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();

  TextEditingController names = TextEditingController();
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  Future init(BuildContext context) async {
    this.context = context;
  }

  Future register() async {}

  void login() {
    Navigator.pop(context!);
  }
}

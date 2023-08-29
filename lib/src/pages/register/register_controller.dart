import 'package:contraensena/src/utils/colorsApp.dart';
import 'package:contraensena/src/utils/service.dart';
import 'package:contraensena/src/utils/shared_pref.dart';
import 'package:flutter/material.dart';

class RegisterController {
  BuildContext? context;
  GlobalKey<ScaffoldState> key = GlobalKey<ScaffoldState>();
  SharedPref? sharedPref;

  TextEditingController names = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future init(BuildContext context) async {
    this.context = context;
    sharedPref = SharedPref();
  }

  Future register() async {
    loading();
    Map<String, String> body = {
      'names': names.text.trim(),
      'email': email.text.trim(),
      'password': password.text.trim()
    };

    if (names.text != '' && email.text != '' && password.text != '') {
      await Service.consulta('users', 'post', body).then((value) async {
        print(value.statusCode);
        print(value.body);
        await sharedPref!.save('user', value.body);

        cerrarModal();
        Navigator.pushNamedAndRemoveUntil(
            context!, '/lock_admin', (route) => false);
      });
    } else {
      cerrarModal();
      modalMensaje('Debe llenar todos los campos', 500);
    }
  }

  void loading() {
    showDialog(
        barrierDismissible: false,
        context: context!,
        builder: (context) {
          return Dialog(
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(
                    color: ColorsApp.fondoInput,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Cargando...',
                    style: TextStyle(
                      color: ColorsApp.fondoInput,
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  void login() {
    Navigator.pop(context!);
  }

  void cerrarModal() {
    Navigator.pop(context!);
  }

  void modalMensaje(String mensaje, int statusCode) {
    showDialog(
        barrierDismissible: false,
        context: context!,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Text(
              mensaje,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: ColorsApp.fondoInput,
                  fontSize: 18,
                  fontWeight: FontWeight.w700),
            ),
            actions: [
              MaterialButton(
                  onPressed: () {
                    cerrarModal();
                    /*if (statusCode == 200) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/main', (route) => false);
                    }*/
                  },
                  color: ColorsApp.fondoInput,
                  child: Text(
                    'OK',
                    style: TextStyle(
                        color: ColorsApp.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ))
            ],
            actionsAlignment: MainAxisAlignment.center,
          );
        });
  }
}

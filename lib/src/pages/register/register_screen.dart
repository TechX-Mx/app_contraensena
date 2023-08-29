import 'package:contraensena/src/pages/register/register_controller.dart';
import 'package:contraensena/src/utils/colorsApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterController con = RegisterController();
  Size? size;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async {
      await con.init(context);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            title(),
            Container(
              height: size!.height * 0.65,
              width: size!.width * 1.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/fondo.png'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: size!.width * 0.1,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: TextField(
                            controller: con.names,
                            style: TextStyle(
                                fontFamily: 'Georgia', color: ColorsApp.white),
                            decoration: InputDecoration(
                              fillColor: ColorsApp.fondoInput,
                              filled: true,
                              hintText: '     Nombres y Apellidos',
                              hintStyle: TextStyle(color: ColorsApp.white),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1, color: ColorsApp.white),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: ColorsApp.white), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: TextField(
                            controller: con.email,
                            style: TextStyle(
                                fontFamily: 'Georgia', color: ColorsApp.white),
                            decoration: InputDecoration(
                              fillColor: ColorsApp.fondoInput,
                              filled: true,
                              hintText: '     Email',
                              hintStyle: TextStyle(color: ColorsApp.white),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: ColorsApp.white), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: ColorsApp.white), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: TextField(
                            controller: con.password,
                            obscureText: true,
                            style: TextStyle(
                                fontFamily: 'Georgia', color: ColorsApp.white),
                            decoration: InputDecoration(
                              fillColor: ColorsApp.fondoInput,
                              filled: true,
                              hintText: '     Contraseña',
                              hintStyle: TextStyle(color: ColorsApp.white),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: ColorsApp.white), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: ColorsApp.white), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Ya tienes cuenta?',
                              style: TextStyle(
                                  fontFamily: 'Georgia',
                                  fontSize: 15.0,
                                  color: ColorsApp.white),
                            ),
                            const SizedBox(
                              width: 15.0,
                            ),
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Text(
                                'Inicio Sesión',
                                style: TextStyle(
                                  fontFamily: 'Georgia',
                                  fontSize: 15.0,
                                  color: ColorsApp.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.03,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.1),
                          child: MaterialButton(
                            height: 50.0,
                            minWidth: MediaQuery.of(context).size.width * 0.40,
                            color: ColorsApp.fondoInput,
                            onPressed: () async => con.register(),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(
                                    color: ColorsApp.white, width: 1.0)),
                            child: Text(
                              'Registrarme',
                              style: TextStyle(
                                  fontFamily: 'Georgia',
                                  fontSize: 20.0,
                                  color: ColorsApp.textLogin),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.1),
                    child: MaterialButton(
                      //minWidth: MediaQuery.of(context).size.width * 0.5,
                      height: 50.0,
                      color: ColorsApp.fondoBtnGoogle,
                      onPressed: () => Navigator.pushNamed(context, '/home'),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/google.png',
                            height: 40.0,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.05,
                          ),
                          Text(
                            'Sing up with google',
                            style: TextStyle(
                                color: ColorsApp.white,
                                fontSize: 16.0,
                                fontFamily: 'Georgia'),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size!.height * 0.04,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Widget title() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'CONTRA',
            style: TextStyle(
                fontSize: 40.0,
                color: ColorsApp.orange,
                fontWeight: FontWeight.bold,
                height: 0.0,
                wordSpacing: 0.0,
                fontFamily: 'CooperBlack'),
          ),
          Text(
            'ENSEÑA',
            style: TextStyle(
                fontSize: 45.0,
                color: ColorsApp.red,
                fontWeight: FontWeight.bold,
                height: 0.0,
                wordSpacing: 0.0,
                fontFamily: 'CooperBlack'),
          )
        ],
      ),
    );
  }
}

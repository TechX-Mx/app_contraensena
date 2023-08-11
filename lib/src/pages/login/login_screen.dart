import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      extendBody: true,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              //height: MediaQuery.of(context).size.height * 0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'CONTRA',
                    style: TextStyle(
                        fontSize: 50.0,
                        color: Color.fromRGBO(254, 128, 34, 1),
                        fontWeight: FontWeight.bold,
                        height: 0.0,
                        wordSpacing: 0.0,
                        fontFamily: 'CooperBlack'),
                  ),
                  Text(
                    'ENSEÑA',
                    style: TextStyle(
                        fontSize: 55.0,
                        color: Color.fromRGBO(235, 35, 36, 1),
                        fontWeight: FontWeight.bold,
                        height: 0.0,
                        wordSpacing: 0.0,
                        fontFamily: 'CooperBlack'),
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.65,
              width: MediaQuery.of(context).size.width * 1.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/fondo.png'), // Replace 'assets/background_image.jpg' with your image path
                  fit: BoxFit
                      .fill, // Adjust the image size to cover the container
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width *
                          0.1, /*vertical: MediaQuery.of(context).size.width * 0.2*/
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: TextField(
                            style: TextStyle(fontFamily: 'Georgia'),
                            decoration: InputDecoration(
                              fillColor: Color.fromRGBO(44, 56, 220, 0.6),
                              filled: true,
                              hintText: '     Email',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.white), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.white), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          child: TextField(
                            obscureText: true,
                            style: TextStyle(fontFamily: 'Georgia'),
                            decoration: InputDecoration(
                              fillColor: Color.fromRGBO(44, 56, 220, 0.6),
                              filled: true,
                              hintText: '     Contraseña',
                              hintStyle: TextStyle(color: Colors.white),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.white), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    width: 1,
                                    color: Colors.white), //<-- SEE HERE
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                            child: Text(
                          'Olvidé mi contraseña',
                          style: TextStyle(
                              fontFamily: 'Georgia',
                              fontSize: 15.0,
                              color: Colors.white),
                        )),
                        SizedBox(
                          height: 7.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'No tienes cuenta?',
                              style: TextStyle(
                                  fontFamily: 'Georgia',
                                  fontSize: 15.0,
                                  color: Colors.white),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            GestureDetector(
                              onTap: () =>
                                  Navigator.pushNamed(context, '/register'),
                              child: Text(
                                'Registrarme',
                                style: TextStyle(
                                  fontFamily: 'Georgia',
                                  fontSize: 15.0,
                                  color: Colors.white,
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
                            color: Color.fromRGBO(44, 56, 220, 0.66),
                            onPressed: () =>
                                Navigator.pushNamed(context, '/home'),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                side: BorderSide(
                                    color: Colors.white, width: 1.0)),
                            child: Text(
                              'Ingresar',
                              style: TextStyle(
                                  fontFamily: 'Georgia',
                                  fontSize: 20.0,
                                  color: Color.fromRGBO(255, 255, 255, 0.76)),
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
                      color: Color.fromRGBO(69, 132, 245, 1),
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
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'Georgia'),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

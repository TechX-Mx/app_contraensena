import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.28,
                  //vertical: MediaQuery.of(context).size.height * 0.25,
                ),
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
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Container(
                      width: 150.0,
                      height:
                          150.0, //MediaQuery.of(context).size.height * 0.10,

                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/login');
                        },
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(67, 67),
                          elevation: 18.0,
                          backgroundColor: Colors.white,
                          padding:
                              EdgeInsets.all(20.0), // Remove default padding
                          shape: CircleBorder(),
                          // Create a circular button
                        ),
                        child: Ink.image(
                          image: AssetImage(
                              'assets/cohete.png'), // Replace with your image path
                          fit: BoxFit.contain, //
                          //height: MediaQuery.of(context).size.height * 0.20,
                          width: MediaQuery.of(context).size.width * 0.40,
                        ),
                      ),
                    ),
                    Expanded(child: SizedBox()),
                    Column(
                      children: [
                        Text(
                          'Bienvenido',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontFamily: 'CooperBlack'),
                        ),
                        Text(
                          'A la nueva app de\naprendizaje por\nrecompensas',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontFamily: 'Georgia'),
                        )
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}

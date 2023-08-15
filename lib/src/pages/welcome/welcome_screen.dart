import 'package:contraensena/src/pages/welcome/welcome_controller.dart';
import 'package:contraensena/src/utils/colorsApp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  WelcomeController con = WelcomeController();
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
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [title(), body()],
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

  Widget body() {
    return Container(
        padding: EdgeInsets.symmetric(
          horizontal: size!.width * 0.28,
        ),
        height: size!.height * 0.65,
        width: size!.width * 1.0,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: size!.height * 0.07,
            ),
            SizedBox(
              width: 150.0,
              height: 150.0, //MediaQuery.of(context).size.height * 0.10,

              child: ElevatedButton(
                onPressed: () => con.login(),
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(67, 67),
                  elevation: 18.0,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.all(20.0), // Remove default padding
                  shape: const CircleBorder(),
                  // Create a circular button
                ),
                child: Ink.image(
                  image: const AssetImage(
                      'assets/cohete.png'), // Replace with your image path
                  fit: BoxFit.contain, //
                  //height: MediaQuery.of(context).size.height * 0.20,
                  width: MediaQuery.of(context).size.width * 0.40,
                ),
              ),
            ),
            const Expanded(child: SizedBox()),
            Column(
              children: [
                Text(
                  'Bienvenido',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 23.0,
                      color: ColorsApp.white,
                      fontFamily: 'CooperBlack'),
                ),
                Text(
                  'A la nueva app de\naprendizaje por\nrecompensas',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 18.0,
                      color: ColorsApp.white,
                      fontFamily: 'Georgia'),
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.07,
            ),
          ],
        ));
  }
}

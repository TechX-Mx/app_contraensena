import 'package:contraensena/src/utils/colorsApp.dart';
import 'package:flutter/material.dart';
import 'package:pattern_lock/pattern_lock.dart';

class LockScreen extends StatefulWidget {
  const LockScreen({super.key});

  @override
  State<LockScreen> createState() => _LockScreenState();
}

class _LockScreenState extends State<LockScreen> {
  Offset? offset;
  List<int> codes = [];
  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width;
    var _sizePainter = Size.square(_width);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(alignment: Alignment.topCenter, children: [
          Container(
            child: Column(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'CONTRA',
                            style: TextStyle(
                                fontSize: 15.0,
                                color: Color.fromRGBO(254, 128, 34, 1),
                                fontWeight: FontWeight.bold,
                                height: 0.0,
                                wordSpacing: 0.0,
                                fontFamily: 'CooperBlack'),
                          ),
                          Text(
                            'ENSEÑA',
                            style: TextStyle(
                                fontSize: 18.0,
                                color: Color.fromRGBO(235, 35, 36, 1),
                                fontWeight: FontWeight.bold,
                                height: 0.0,
                                wordSpacing: 0.0,
                                fontFamily: 'CooperBlack'),
                          )
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu_rounded,
                            color: Color.fromRGBO(44, 56, 220, 1),
                            size: 40.0,
                          ))
                    ],
                  ),
                ),
                Container(
                  height: 20.0,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Container(
                  height: 20.0,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(467, 78, 246, 1)),
                ),
                Expanded(
                    child: Container(
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(67, 78, 246, 1)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Container(
                        width: MediaQuery.of(context).size.width * 1,
                        padding: EdgeInsets.symmetric(horizontal: 30.0),
                        child: PatternLock(
                          // color of selected points.
                          selectedColor: Colors.red,
                          notSelectedColor: ColorsApp.white,
                          // radius of points.
                          pointRadius: 30,
                          // whether show user's input and highlight selected points.
                          showInput: true,
                          // count of points horizontally and vertically.
                          dimension: 3,
                          // padding of points area relative to distance between points.
                          relativePadding: 0.7,
                          // needed distance from input to point to select point.
                          selectThreshold: 25,
                          // whether fill points.
                          fillPoints: true,

                          // callback that called when user's input complete. Called if user selected one or more points.
                          onInputComplete: (List<int> input) {
                            print("pattern is $input");
                          },
                        ),
                      )),
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: GestureDetector(
                            child: Text(
                          'Olvide mi contraseña',
                          style: TextStyle(
                              fontFamily: 'Georgia',
                              color: ColorsApp.white,
                              fontSize: 18.0),
                        )),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: ColorsApp.orange, width: 6.0)),
                        padding: EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 10.0),
                        child: Container(
                          child: Text(
                            'NUEVAS\nACTIVIDADES',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'CooperBlack',
                                color: Color.fromRGBO(231, 28, 38, 1)),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 70.0),
            height: 60.0,
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                color: Color.fromRGBO(44, 56, 220, 1),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'CONTRASEÑA',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Georgia',
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                )),
              ],
            ),
          )
        ]),
        /*body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Color.fromRGBO(70, 76, 163, 1),
                  borderRadius: BorderRadius.circular(25.0)),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              width: MediaQuery.of(context).size.width * 1.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'ACTIVAR',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    //width: MediaQuery.of(context).size.width * 0.30,
                    child: Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 10.0),
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          //onPressed: () {},
                          child: Image.asset(
                            'assets/llave.png',
                            height: 12.0,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 50.0,
                          height: 50.0,
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(255, 201, 27, 1),
                              borderRadius: BorderRadius.circular(
                                  10.0)), //onPressed: () {},
                          child: Icon(
                            Icons.edit_outlined,
                            color: Colors.black,
                            size: 30.0,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Expanded(
                child: ListView(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/whatsapp.png',
                              height: 40.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Whatsapp',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.white,
                              ),
                              child: Checkbox(
                                  value: estados[0],
                                  checkColor: Color.fromRGBO(253, 127, 32, 1),
                                  activeColor: Color.fromRGBO(255, 201, 27, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  onChanged: (value) {
                                    estados[0] = value!;
                                    setState(() {});
                                  }),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.white,
                              ),
                              child: Checkbox(
                                  value: estados[0],
                                  checkColor: Color.fromRGBO(253, 127, 32, 1),
                                  activeColor: Color.fromRGBO(255, 201, 27, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  onChanged: (value) {
                                    estados[1] = value!;
                                    setState(() {});
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/youtube.png',
                              height: 40.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Youtube',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18.0),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.white,
                              ),
                              child: Checkbox(
                                  value: estados[0],
                                  checkColor: Color.fromRGBO(253, 127, 32, 1),
                                  activeColor: Color.fromRGBO(255, 201, 27, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  onChanged: (value) {
                                    estados[0] = value!;
                                    setState(() {});
                                  }),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Theme(
                              data: Theme.of(context).copyWith(
                                unselectedWidgetColor: Colors.white,
                              ),
                              child: Checkbox(
                                  value: estados[0],
                                  checkColor: Color.fromRGBO(253, 127, 32, 1),
                                  activeColor: Color.fromRGBO(255, 201, 27, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4.0),
                                  ),
                                  onChanged: (value) {
                                    estados[1] = value!;
                                    setState(() {});
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Divider(
                    color: Colors.white,
                  ),
                )
              ],
            ))
          ],
        ),*/
      ),
    );
  }
}

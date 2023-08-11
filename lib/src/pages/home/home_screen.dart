import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<bool> estados = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        /*appBar: AppBar(
          backgroundColor: Colors.white,
          title: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 5.0),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromRGBO(70, 76, 163, 1), width: 2.0),
                borderRadius: BorderRadius.circular(12.0)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'NUEVAS',
                  style: TextStyle(
                      color: Color.fromRGBO(70, 76, 163, 1), fontSize: 17.0),
                ),
                Text(
                  'ACTIVIDADES',
                  style: TextStyle(
                      color: Color.fromRGBO(70, 76, 163, 1), fontSize: 17.0),
                )
              ],
            ),
          ),
          iconTheme: IconThemeData(color: Color.fromRGBO(67, 78, 246, 1)),
          actions: [
            Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Contra',
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Color.fromRGBO(254, 128, 34, 1),
                        fontWeight: FontWeight.bold,
                        height: 0.0,
                        wordSpacing: 0.0),
                  ),
                  Text(
                    'Enseña',
                    style: TextStyle(
                        fontSize: 28.0,
                        color: Color.fromRGBO(235, 35, 36, 1),
                        fontWeight: FontWeight.bold,
                        height: 0.0,
                        wordSpacing: 0.0),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 15.0,
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: Color.fromRGBO(67, 78, 246, 1),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          'Contra',
                          style: TextStyle(
                              fontSize: 55.0,
                              color: Color.fromRGBO(254, 128, 34, 1),
                              fontWeight: FontWeight.bold,
                              height: 0.0,
                              wordSpacing: 0.0),
                        ),
                        Text(
                          'Enseña',
                          style: TextStyle(
                              fontSize: 65.0,
                              color: Color.fromRGBO(235, 35, 36, 1),
                              fontWeight: FontWeight.bold,
                              height: 0.0,
                              wordSpacing: 0.0),
                        )
                      ],
                    ),
                  )),
              ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text(
                  'Contraseña',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text('Configuración',
                    style: TextStyle(color: Colors.white, fontSize: 25.0)),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(
                  Icons.output,
                  color: Colors.white,
                  size: 30.0,
                ),
                title: Text('Salir',
                    style: TextStyle(color: Colors.white, fontSize: 25.0)),
                onTap: () {},
              ),
            ],
          ),
        ),
        */
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
                      BoxDecoration(color: Color.fromRGBO(44, 56, 220, 0.76)),
                ),
                Expanded(
                    child: Container(
                  padding: EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(44, 56, 220, 0.76)),
                  child: ListView(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        height: 60.0,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.49),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Image.asset(
                                    'assets/whatsapp.png',
                                    height: 40.0,
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    'Whatsapp',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Georgia',
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            )),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.37,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 54.0,
                                    width: 56.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 54.0,
                                    width: 56.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Image.asset('assets/check.png'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10.0),
                        height: 60.0,
                        alignment: Alignment.topCenter,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 255, 255, 0.49),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                                child: Container(
                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Image.asset(
                                    'assets/youtube.png',
                                    height: 40.0,
                                  ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Text(
                                    'Youtube',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'Georgia',
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.w700),
                                  )
                                ],
                              ),
                            )),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.37,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 54.0,
                                    width: 56.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 54.0,
                                    width: 56.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: Image.asset('assets/check.png'),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
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
                    'ACTIVAR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Georgia',
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                )),
                Container(
                  width: MediaQuery.of(context).size.width * 0.40,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 54.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Image.asset('assets/llave_new.png'),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        height: 54.0,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Image.asset('assets/edit_new.png'),
                      ),
                    ],
                  ),
                )
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

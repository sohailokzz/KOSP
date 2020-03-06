import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'i_lost.dart';
import 'i_found.dart';

class LostFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lost & Found',
      home: LostFoundFront(),
      routes: {
        '/ilost':(context)=> ILost(),
        '/ifound': (context)=> IFound(),
      },
    );
  }
}

class LostFoundFront extends StatefulWidget {
  @override
  _LostFoundFrontState createState() => _LostFoundFrontState();
}

class _LostFoundFrontState extends State<LostFoundFront> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            kBackground(
              assetImage: 'assets/lostfound.jpg',
            ),
            LostFoundChoose(),
          ],
        ),
      ),
    );
  }
}

class LostFoundChoose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF3B2E7E),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/lostfound.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Lost & Found',
                        style: ktextStyle.copyWith(
                          fontSize: 45.0,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 250.0, 25.0, 16.0),
                  decoration: BoxDecoration(
                    color: Color(0xBAFFFFFF),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.only(top: 50.0, left: 16.0, right: 16.0, bottom: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kMyButton(
                              label: 'I Lost',
                              size: 20.0,
                              route: '/ilost',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kMyButton(
                              label: 'I Found',
                              size: 20.0,
                              route: '/ifound',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
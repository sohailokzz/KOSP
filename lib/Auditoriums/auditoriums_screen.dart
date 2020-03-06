import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'main_auditorium.dart';
import 'ioc_auditorium.dart';
import 'maths_auditorium.dart';
import 'english_auditorium.dart';
import 'physics_auditorium.dart';
import 'chemistry_auditorium.dart';
import 'ibs_auditorium.dart';
class Auditorium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auditoriums',
      home: Auditoriums(),
      routes: {
        '/mainaudi': (context) => MainAudiDetails(),
        '/iocaudi': (context) => IOCAudiDetails(),
        '/mathsaudi': (context) => MathsAudiDetails(),
        '/englishaudi': (context)=> EnglishAudiDetails(),
        '/physicsaudi': (context) => PhysicsAudiDetails(),
        '/chemistryaudi': (context)=> ChemistryAudiDetails(),
        '/ibsaudi':(context)=> IBSAudiDetails(),
      },
    );
  }
}

class Auditoriums extends StatefulWidget {
  @override
  _AuditoriumsState createState() => _AuditoriumsState();
}

class _AuditoriumsState extends State<Auditoriums> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          kBackground(
            assetImage: 'assets/auditorium.jpg',
          ),
          AllAuditorium(),
        ],
      )),
    );
  }
}

class AllAuditorium extends StatelessWidget {
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
                        'assets/audi1.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Auditoriums',
                        style: ktextStyle.copyWith(
                          fontSize: 50.0,
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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kMyButton(
                              label: 'Main Auditorium',
                              size: 20.0,
                              route: '/mainaudi',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ReusableRow(
                        label1: 'IOC',
                        route1: '/iocaudi',
                        label2: 'Maths',
                        route2: '/mathsaudi',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ReusableRow(
                        label1: 'English',
                        route1: '/englishaudi',
                        label2: 'Physics',
                        route2: '/physicsaudi',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ReusableRow(
                        label1: 'Chemistry',
                        route1: '/chemistryaudi',
                        label2: 'IBS',
                        route2: '/ibsaudi',
                      )
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

class ReusableRow extends StatelessWidget {
  ReusableRow({this.label1, this.label2, this.route1, this.route2});
  final String label1;
  final String label2;
  final String route1;
  final String route2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: kMyButton(
            label: label1,
            size: 17.0,
            route: route1,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: kMyButton(
            label: label2,
            size: 17.0,
            route: route2,
          ),
        ),
      ],
    );
  }
}

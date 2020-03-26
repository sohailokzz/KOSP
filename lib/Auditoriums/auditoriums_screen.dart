import 'package:flutter/material.dart';
import 'package:KustSmartApp/constant.dart';
import 'all_auditorium.dart';
import 'main_auditorium.dart';
import 'ioc_auditorium.dart';
import 'maths_auditorium.dart';
import 'english_auditorium.dart';
import 'physics_auditorium.dart';
import 'chemistry_auditorium.dart';
import 'ibs_auditorium.dart';

class Auditorium extends StatelessWidget {
  static String id = 'auditorium';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auditoriums',
      home: Auditoriums(),
      routes: {
        MainAudiDetails.id: (context) => MainAudiDetails(),
        IOCAudiDetails.id: (context) => IOCAudiDetails(),
        MathsAudiDetails.id: (context) => MathsAudiDetails(),
        EnglishAudiDetails.id: (context) => EnglishAudiDetails(),
        PhysicsAudiDetails.id: (context) => PhysicsAudiDetails(),
        ChemistryAudiDetails.id: (context) => ChemistryAudiDetails(),
        IBSAudiDetails.id: (context) => IBSAudiDetails(),
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



class ReusableRow extends StatelessWidget {
  ReusableRow({this.label1, this.label2, this.route1, this.route2});
  final String label1;
  final String label2;
  final Function route1;
  final Function route2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: kMyButton(
            label: label1,
            size: 17.0,
            onPress: route1,
          ),
        ),
        SizedBox(
          width: 20.0,
        ),
        Expanded(
          child: kMyButton(
            label: label2,
            size: 17.0,
            onPress: route1,
          ),
        ),
      ],
    );
  }
}

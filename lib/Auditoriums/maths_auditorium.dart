import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'auditoriums_constants.dart';

class MathsAudiDetails extends StatelessWidget {
  static String id = 'maths_auditorium';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Maths Auditorium',
      home: MathsAudiScreen(),
    );
  }
}

class MathsAudiScreen extends StatefulWidget {
  @override
  _MathsAudiScreenState createState() => _MathsAudiScreenState();
}

class _MathsAudiScreenState extends State<MathsAudiScreen> {
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
            kAuditoriumCheck(
              mainLabel: 'Maths Auditorium',
            ),
          ],
        ),
      ),
    );
  }
}

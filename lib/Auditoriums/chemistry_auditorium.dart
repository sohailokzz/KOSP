import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'auditoriums_constants.dart';

class ChemistryAudiDetails extends StatelessWidget {
  static String id = 'chemistry_auditorium';
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Chemistry Auditorium',
      home: ChemistryAudiScreen(),
    );
  }
}

class ChemistryAudiScreen extends StatefulWidget {
  @override
  _ChemistryAudiScreenState createState() => _ChemistryAudiScreenState();
}

class _ChemistryAudiScreenState extends State<ChemistryAudiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/auditorium.jpg',
            ),
            KAuditoriumCheck(
              mainLabel: 'Chemistry Auditorium',
            ),
          ],
        ),
      ),
    );
  }
}

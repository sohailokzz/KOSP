import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'auditoriums_constants.dart';

class IBSAudiDetails extends StatelessWidget {
  static String id = 'ibs_auditorium';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IBS Auditorium',
      home: IBSAudiScreen(),
    );
  }
}

class IBSAudiScreen extends StatefulWidget {
  @override
  _IBSAudiScreenState createState() => _IBSAudiScreenState();
}

class _IBSAudiScreenState extends State<IBSAudiScreen> {
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
              mainLabel: 'IBS Auditorium',
            ),
          ],
        ),
      ),
    );
  }
}

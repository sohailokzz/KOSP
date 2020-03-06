import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'auditoriums_constants.dart';

class IBSAudiDetails extends StatelessWidget {
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
            kBackground(
              assetImage: 'assets/auditorium.jpg',
            ),
            kAuditoriumCheck(
              mainLabel: 'IBS Auditorium',
            ),
          ],
        ),
      ),
    );
  }
}

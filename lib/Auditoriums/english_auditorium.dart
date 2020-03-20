import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'auditoriums_constants.dart';

class EnglishAudiDetails extends StatelessWidget {
  static String id = 'english_auditorium';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'English Auditorium',
      home: EnglishAudiScreen(),
    );
  }
}

class EnglishAudiScreen extends StatefulWidget {
  @override
  _EnglishAudiScreenState createState() => _EnglishAudiScreenState();
}

class _EnglishAudiScreenState extends State<EnglishAudiScreen> {
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
              mainLabel: 'English Auditorium',
            ),
          ],
        ),
      ),
    );
  }
}

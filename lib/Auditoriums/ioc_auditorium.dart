import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'auditoriums_constants.dart';

class IOCAudiDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IOC Auditorium',
      home: IOCAudiScreen(),
    );
  }
}

class IOCAudiScreen extends StatefulWidget {
  @override
  _IOCAudiScreenState createState() => _IOCAudiScreenState();
}

class _IOCAudiScreenState extends State<IOCAudiScreen> {
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
              mainLabel: 'IOC Auditorium',
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'auditoriums_constants.dart';

class IOCAudiDetails extends StatelessWidget {
  static String id = 'ioc_auditorium';
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
            KBackground(
              assetImage: 'assets/auditorium.jpg',
            ),
            KAuditoriumCheck(
              mainLabel: 'IOC Auditorium',
            ),
          ],
        ),
      ),
    );
  }
}

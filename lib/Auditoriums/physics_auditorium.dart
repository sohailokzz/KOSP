import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'auditoriums_constants.dart';

class PhysicsAudiDetails extends StatelessWidget {
  static String id = 'physics_auditorium';
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Physics Auditorium',
      home: PhysicsAudiScreen(),
    );

  }
}

class PhysicsAudiScreen extends StatefulWidget {
  @override
  _PhysicsAudiScreenState createState() => _PhysicsAudiScreenState();
}

class _PhysicsAudiScreenState extends State<PhysicsAudiScreen> {
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
              mainLabel: 'Physics Auditorium',
            ),
          ],
        ),
      ),
    );
  }
}

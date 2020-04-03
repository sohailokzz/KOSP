import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'auditoriums_constants.dart';

class MainAudiDetails extends StatelessWidget {
  static String id = 'main_auditorium';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Main Auditorium',
      home: MainAudiScreen(),
    );
  }
}

class MainAudiScreen extends StatefulWidget {
  @override
  _MainAudiScreenState createState() => _MainAudiScreenState();
}

class _MainAudiScreenState extends State<MainAudiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xFF3B2E7E),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/auditorium.jpg',
            ),
            KAuditoriumCheck(
              mainLabel: 'Main Auditorium',
            ),
          ],
        ),
      ),
    );
  }
}

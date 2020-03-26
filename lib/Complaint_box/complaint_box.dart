import 'package:flutter/material.dart';
import 'package:KustSmartApp/Parking_Registration/parking_registration.dart';
import 'package:KustSmartApp/constant.dart';
import '../Home_page_and_menue_page/home_page.dart';
import 'complaint-info.dart';

class ComplaintBox extends StatelessWidget {
  static String id = 'complaint_box';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Complaint Box',
      home: Complaint(),
    );
  }
}

class Complaint extends StatefulWidget {
  @override
  _ComplaintState createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            kBackground(
              assetImage: 'assets/abtkust.jpg',
            ),
            ComplaintInfo(),
          ],
        ),
      ),
    );
  }
}





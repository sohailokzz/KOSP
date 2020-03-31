import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'complaint-info.dart';

class ComplaintBox extends StatelessWidget {
  static String id = 'complaint_box';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xBF3C2E7F),
        body: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Complaint Box',
          home: Complaint(),
        ));
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
            KBackground(
              assetImage: 'assets/abtkust.jpg',
            ),
            ComplaintInfo(),
          ],
        ),
      ),
    );
  }
}

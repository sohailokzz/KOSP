import 'package:flutter/material.dart';
import 'package:KustSmartApp/Parking_Registration/parking_registration.dart';
import 'package:KustSmartApp/constant.dart';
import '../Home_page_and_menue_page/home_page.dart';
import 'apointment_information.dart';

class VCAppointment extends StatelessWidget {
  static String id = 'vc_appointment';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Apointment',
      home: Appointment(),
    );
  }
}

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
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
            AppointmentInfo(),
          ],
        ),
      ),
    );
  }
}





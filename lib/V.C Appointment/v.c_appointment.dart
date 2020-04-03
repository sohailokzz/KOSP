import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'apointment_information.dart';

class VCAppointment extends StatelessWidget {
  static String id = 'vc_appointment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Apointment',
        home: Appointment(),
      ),
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
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/abtkust.jpg',
            ),
            AppointmentInfo(),
          ],
        ),
      ),
    );
  }
}

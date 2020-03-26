import 'package:flutter/material.dart';
import 'package:KustSmartApp/Auditoriums/booking_form.dart';
import 'package:KustSmartApp/constant.dart';
import 'auditoriums_screen.dart';

class Booking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Booking',
      home: BookingScreen(),
      routes: {
        '/auditoriums': (context) => Auditorium(),
      },
    );
  }
}

class BookingScreen extends StatefulWidget {
  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
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
            BookingForm(),
          ],
        ),
      ),
    );
  }
}





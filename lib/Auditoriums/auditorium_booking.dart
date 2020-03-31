import 'package:flutter/material.dart';
import 'package:kust_online/Auditoriums/booking_form.dart';
import 'package:kust_online/constant.dart';
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
            KBackground(
              assetImage: 'assets/auditorium.jpg',
            ),
            BookingForm(),
          ],
        ),
      ),
    );
  }
}





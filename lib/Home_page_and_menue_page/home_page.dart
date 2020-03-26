import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:KustSmartApp/constant.dart';
import '../V.C Appointment/v.c_appointment.dart';
import '../About_Kust/abt_kust.dart';
import 'package:KustSmartApp/Auditoriums/auditoriums_screen.dart';
import '../Lost_Found/lostfound.dart';
import '../Hostel/hostel_detail.dart';
import '../Bus/bus_details.dart';
import '../Namaz/namaz_details.dart';
import '../Cafe/cafe_details.dart';
import '../Parking_Registration/parking_registration.dart';
import '../Complaint_box/complaint_box.dart';
import 'package:KustSmartApp/account_setting/account.dart';

import 'my_menue.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HomePage',
      home: Menu(),
      routes: {
        AboutKUST.id: (context) => AboutKUST(),
        Auditorium.id: (context) => Auditorium(),
        LostFound.id: (context) => LostFound(),
        HostelDetails.id: (context) => HostelDetails(),
        BusDetails.id: (context) => BusDetails(),
        NamazDetails.id: (context) => NamazDetails(),
        CafeDetails.id: (context) => CafeDetails(),
        ParkingDetails.id: (context) => ParkingDetails(),
        ComplaintBox.id: (context) => ComplaintBox(),
        VCAppointment.id: (context) => VCAppointment(),
        AboutAccount.id: (context) => AboutAccount(),
      },
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  final purpleOpacity = Container(
    color: Color(0xD13C2E7F),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            kBackground(
              assetImage: 'assets/menubackground.jpg',
            ),
            MyMenu(),
          ],
        ),
      ),
    );
  }
}



//0xBAFFFFFFFF

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kust_online/constant.dart';
import 'abt_kust.dart';
import 'package:kust_online/Auditoriums/auditoriums_screen.dart';
import '../LostFound/lostfound.dart';
import 'hostel_detail.dart';
import 'bus_details.dart';
import 'namaz_details.dart';
import 'cafe_details.dart';
import 'parking_registration.dart';
import 'complaint_box.dart';
import 'vc_appointment.dart';
import 'package:kust_online/account_setting/account.dart';

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

class MyMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
      appBar: AppBar(
        backgroundColor: Color(0xFF3B2E7E),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.person_pin,
              color: Colors.white,
              size: 40.0,
            ),
            onPressed: () {
              Navigator.pushNamed(context, AboutAccount.id);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF3B2E7E),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/promotion.png'),
                      Text(
                        'Menu',
                        style: ktextStyle.copyWith(
                          fontSize: 50.0,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 250.0, 25.0, 16.0),
                  decoration: BoxDecoration(
                      color: Color(0xBAFFFFFF),
                      borderRadius: BorderRadius.circular(15.0)),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, AboutKUST.id);
                              },
                              cardChild: kIconContent(
                                label: 'About KUST',
                                assetImage: 'assets/logo.gif',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: kReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, Auditorium.id);
                              },
                              cardChild: kIconContent(
                                label: 'Auditorium',
                                assetImage: 'assets/audi1.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, ComplaintBox.id);
                              },
                              cardChild: kIconContent(
                                label: 'Complaint Box',
                                assetImage: 'assets/comp.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: kReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, HostelDetails.id);
                              },
                              cardChild: kIconContent(
                                label: 'Hostel Details',
                                assetImage: 'assets/host.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, VCAppointment.id);
                              },
                              cardChild: kIconContent(
                                label: 'V.C Appointment',
                                assetImage: 'assets/appoint.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: kReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, LostFound.id);
                              },
                              cardChild: kIconContent(
                                label: 'Lost & Found',
                                assetImage: 'assets/lostfound.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kReusableButton(
                                onPress: () {
                                  Navigator.pushNamed(
                                      context, ParkingDetails.id);
                                },
                                cardChild: kIconContent(
                                  label: 'Parking Details',
                                  assetImage: 'assets/parking.png',
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: kReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, BusDetails.id);
                              },
                              cardChild: kIconContent(
                                label: 'Bus Details',
                                assetImage: 'assets/bus.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, CafeDetails.id);
                              },
                              cardChild: kIconContent(
                                label: 'Cafe Details',
                                assetImage: 'assets/cafe.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: kReusableButton(
                                onPress: () {
                                  Navigator.pushNamed(context, NamazDetails.id);
                                },
                                cardChild: kIconContent(
                                  label: 'Namaz Details',
                                  assetImage: 'assets/mosque1.png',
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 0,
                            child: kReusableButton(
                              onPress: () {},
                              cardChild: kIconContent(
                                label: 'About',
                                assetImage: 'assets/info.png',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//0xBAFFFFFFFF

import 'package:kust_online/Auditoriums/auditoriums_screen.dart';
import 'package:kust_online/Lost_Found/lostfound.dart';
import 'package:kust_online/Parking_Registration/parking_registration.dart';
import 'package:kust_online/V.C%20Appointment/v.c_appointment.dart';
import 'package:kust_online/complaint_box/complaint_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../About_Kust/abt_kust.dart';
import '../Bus/bus_details.dart';
import '../Cafe/cafe_details.dart';
import '../Hostel/hostel_detail.dart';
import '../Namaz/namaz_details.dart';

class MyMenu extends StatefulWidget {
  static String id = "my_menu";

  @override
  _MyMenuState createState() => _MyMenuState();
}

class _MyMenuState extends State<MyMenu> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  final Color primary = Color(0xFF3B2E7E);

  final Color active = Color(0xBAFFFFFF);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: Color(0xFF3B2E7E),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.person_pin),
          onPressed: () {
            _key.currentState.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(),
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
                            child: KReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, AboutKUST.id);
                              },
                              cardChild: KIconContent(
                                label: 'About KUST',
                                assetImage: 'assets/logo.gif',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: KReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, Auditorium.id);
                              },
                              cardChild: KIconContent(
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
                            child: KReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, ComplaintBox.id);
                              },
                              cardChild: KIconContent(
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
                            child: KReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, HostelDetails.id);
                              },
                              cardChild: KIconContent(
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
                            child: KReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, VCAppointment.id);
                              },
                              cardChild: KIconContent(
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
                            child: KReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, LostFound.id);
                              },
                              cardChild: KIconContent(
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
                            child: KReusableButton(
                                onPress: () {
                                  Navigator.pushNamed(
                                      context, ParkingDetails.id);
                                },
                                cardChild: KIconContent(
                                  label: 'Parking Details',
                                  assetImage: 'assets/parking.png',
                                  color: Colors.white,
                                )),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: KReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, BusDetails.id);
                              },
                              cardChild: KIconContent(
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
                            child: KReusableButton(
                              onPress: () {
                                Navigator.pushNamed(context, CafeDetails.id);
                              },
                              cardChild: KIconContent(
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
                            child: KReusableButton(
                                onPress: () {
                                  Navigator.pushNamed(context, NamazDetails.id);
                                },
                                cardChild: KIconContent(
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
                            child: KReusableButton(
                              onPress: () {},
                              cardChild: KIconContent(
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

  _buildDrawer() {
    return ClipPath(
      clipper: OvalRightBorderClipper(),
      child: Drawer(
        child: Container(
          padding: const EdgeInsets.only(left: 16.0, right: 40),
          decoration: BoxDecoration(
              color: primary, boxShadow: [BoxShadow(color: Colors.black45)]),
          width: 300,
          child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(
                        Icons.power_settings_new,
                        color: active,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  Container(
                    height: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                            colors: [Colors.pink, Colors.deepPurple])),
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/sohail.jpg'),
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    "Sohail Orakzai",
                    style: TextStyle(color: Colors.white, fontSize: 18.0),
                  ),
                  Text(
                    "@sohailokzz",
                    style: TextStyle(color: active, fontSize: 16.0),
                  ),
                  SizedBox(height: 30.0),
                  _buildRow(Icons.home, "Home", () {}),
                  _buildDivider(),
                  _buildRow(Icons.person_pin, "My profile", () {
                    print('tapped Profile');
                  }),
                  _buildDivider(),
                  _buildRow(
                    Icons.message,
                    "Messages",
                    () {
                      print('Tapped Message');
                    },
                    showBadge: true,
                  ),
                  _buildDivider(),
                  _buildRow(Icons.notifications, "Notifications", () {
                    print('Tapped noti');
                  }, showBadge: true),
                  _buildDivider(),
                  _buildRow(Icons.settings, "Settings", () {
                    print('Tapped setting');
                  }),
                  _buildDivider(),
                  _buildRow(Icons.email, "Contact us", () {
                    print('Tapped contct');
                  }),
                  _buildDivider(),
                  _buildRow(Icons.info_outline, "Help", () {
                    print('Tapped help');
                  }),
                  _buildDivider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Divider _buildDivider() {
    return Divider(
      color: active,
    );
  }

  Widget _buildRow(IconData icon, String title, Function onTap,
      {bool showBadge = false}) {
    final TextStyle tStyle = TextStyle(color: active, fontSize: 16.0);
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: active,
        ),
        SizedBox(width: 10.0),
        InkWell(
          onTap: onTap,
          child: Text(
            title,
            style: tStyle,
          ),
        ),
        Spacer(),
        if (showBadge)
          Material(
            color: Colors.deepOrange,
            elevation: 5.0,
            shadowColor: Colors.red,
            borderRadius: BorderRadius.circular(5.0),
            child: Container(
              width: 25,
              height: 25,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                "10+",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
          )
      ]),
    );
  }
}

class OvalRightBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(size.width - 40, 0);
    path.quadraticBezierTo(
        size.width, size.height / 4, size.width, size.height / 2);
    path.quadraticBezierTo(size.width, size.height - (size.height / 4),
        size.width - 40, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

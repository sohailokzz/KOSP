import 'package:kust_online/Auditoriums/auditoriums_screen.dart';
import 'package:kust_online/Lost_Found/lostfound.dart';
import 'package:kust_online/Notification_Bell/notification_page.dart';
import 'package:kust_online/Parking_Registration/parking_registration.dart';
import 'package:kust_online/V.C%20Appointment/v.c_appointment.dart';
import 'package:kust_online/account_setting/account.dart';
import 'package:kust_online/complaint_box/complaint_box.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import '../About_Kust/abt_kust.dart';
import '../Bus/bus_details.dart';
import '../Cafe/cafe_details.dart';
import '../Hostel/hostel_detail.dart';
import '../Namaz/namaz_details.dart';
import '../Notification_Bell/notification_page.dart';


class MyMenu extends StatelessWidget {
  static String id="my_menu";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xFF3B2E7E),
      appBar: AppBar(
        backgroundColor: Color(0xFF3B2E7E),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
                size: 30,
            ),

            onPressed:() {
              Navigator.pushNamed(context, Notifications.id);

            }

          ),



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
}
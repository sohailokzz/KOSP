import 'package:flutter/material.dart';
import 'package:KustSmartApp/constant.dart';
import 'auditorium_booking.dart';
import 'auditorium_details.dart';
import 'auditorium_requests.dart';

class kAuditoriumCheck extends StatelessWidget {
  kAuditoriumCheck({this.mainLabel});
  final String mainLabel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
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
                      Image.asset(
                        'assets/audi1.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        mainLabel,
                        style: ktextStyle.copyWith(
                          fontSize: 28.0,
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
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: kAuditoriumButtons(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class kAuditoriumButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 50.0, bottom: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: ButtonTheme(
                  height: 80.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color(0xFF3B2E7E),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AudiEventFront();
                          },
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Details',
                        style: ktextStyle.copyWith(fontSize: 20.0),
                      ),
                    ),
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
                child: ButtonTheme(
                  height: 80.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color(0xFF3B2E7E),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Booking();
                          },
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Booking',
                        style: ktextStyle.copyWith(fontSize: 20.0),
                      ),
                    ),
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
                child: ButtonTheme(
                  height: 80.0,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Color(0xFF3B2E7E),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AudiRequests();
                          },
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        'Requests',
                        style: ktextStyle.copyWith(fontSize: 20.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

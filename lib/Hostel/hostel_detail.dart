import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'hostel_choose.dart';

class HostelDetails extends StatelessWidget {
  static String id = 'hostel_details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hostel Details',
        home: HostelScreen(),
      ),
    );
  }
}

class HostelScreen extends StatefulWidget {
  @override
  _HostelScreenState createState() => _HostelScreenState();
}

class _HostelScreenState extends State<HostelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/hostel.jpg',
            ),
            HostelChoose(),
          ],
        ),
      ),
    );
  }
}

class ReusableHostelRow extends StatelessWidget {
  ReusableHostelRow({this.hostelName});

  final String hostelName;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: ButtonTheme(
            height: 80.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
              color: Color(0xFF3B2E7E),
              onPressed: () {
                showModalBottomSheet(
                    backgroundColor: Color(0xFF3C2E7F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60.0),
                        topRight: Radius.circular(60.0),
                      ),
                    ),
                    context: context,
                    builder: (builder) {
                      return FractionallySizedBox(
                        heightFactor: 0.8,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                hostelName,
                                style: ktextStyle.copyWith(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                color: Colors.white,
                                thickness: 2.0,
                                indent: 15.0,
                                endIndent: 15.0,
                              ),
                              ReusableRow(
                                person: 'Manager Name:',
                                status: 'Sohail Ahmad',
                                distanceBetween: 60.0,
                              ),
                              ReusableRow(
                                person: 'Capacity:',
                                status: '1234',
                                distanceBetween: 110.0,
                              ),
                              ReusableRow(
                                person: 'No Of Student:',
                                status: '1234',
                                distanceBetween: 60.0,
                              ),
                              ReusableRow(
                                person: 'Number Of Rooms:',
                                status: '100',
                                distanceBetween: 35.0,
                              ),
                              ReusableRow(
                                person: 'Rooms Status:',
                                status: 'Available',
                                distanceBetween: 65.0,
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Center(
                child: Text(
                  hostelName,
                  style: ktextStyle.copyWith(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ReusableRow extends StatelessWidget {
  ReusableRow({this.person, this.status, this.distanceBetween});
  final String person;
  final String status;
  final double distanceBetween;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: <Widget>[
          Text(
            person,
            style: ktextStyle.copyWith(fontSize: 15.0),
          ),
          SizedBox(
            width: distanceBetween,
          ),
          Text(
            status,
            style: ktextStyle.copyWith(fontSize: 15.0),
          ),
        ],
      ),
    );
  }
}

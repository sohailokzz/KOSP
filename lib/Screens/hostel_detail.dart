import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';

class HostelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Details',
      home: HostelScreen(),
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
            kBackground(
              assetImage: 'assets/hostel.jpg',
            ),
            HostelChoose(),
          ],
        ),
      ),
    );
  }
}

class HostelChoose extends StatelessWidget {
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
                        'assets/host.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Hostel Details',
                        style: ktextStyle.copyWith(
                          fontSize: 45.0,
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ReusableHostelRow(
                          hostelName: 'Boys 1',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableHostelRow(
                          hostelName: 'Boys 2',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableHostelRow(
                          hostelName: 'Girls 1',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableHostelRow(
                          hostelName: 'Girls 2',
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
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

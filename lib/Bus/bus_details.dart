import 'package:flutter/material.dart';
import 'package:KustSmartApp/constant.dart';

import '../Bus/bus_choose.dart';
import 'bus_choose.dart';


class BusDetails extends StatelessWidget {
  static String id = 'bus_details';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Details',
      home: BusScreen(),
    );
  }
}

class BusScreen extends StatefulWidget {
  @override
  _BusScreenState createState() => _BusScreenState();
}

class _BusScreenState extends State<BusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            kBackground(
              assetImage: 'assets/busback.jpg',
            ),
            BusChoose(),
          ],
        ),
      ),
    );
  }
}



class ReusableBusRow extends StatelessWidget {
  ReusableBusRow(
      {this.busName,
      this.morningTiming,
      this.morningLocation,
      this.eveningTiming,
      this.eveningLocation});

  final String busName;
  final String morningTiming;
  final String morningLocation;
  final String eveningTiming;
  final String eveningLocation;
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
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              busName,
                              style: ktextStyle.copyWith(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            Text(
                              'Morning',
                              style: ktextStyle.copyWith(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.normal),
                            ),
                            Divider(
                              color: Colors.white,
                              thickness: 2.0,
                              indent: 15.0,
                              endIndent: 15.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Timing:',
                                    style: ktextStyle.copyWith(fontSize: 15.0),
                                  ),
                                  SizedBox(
                                    width: 140.0,
                                  ),
                                  Text(
                                    morningTiming,
                                    style: ktextStyle.copyWith(fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'Start Location:',
                                    style: ktextStyle.copyWith(fontSize: 15.0),
                                  ),
                                  SizedBox(
                                    width: 80.0,
                                  ),
                                  Text(
                                    morningLocation,
                                    textAlign: TextAlign.center,
                                    style: ktextStyle.copyWith(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Evening',
                                  style: ktextStyle.copyWith(fontSize: 20.0),
                                ),
                                Divider(
                                  color: Colors.white,
                                  thickness: 2.0,
                                  indent: 15.0,
                                  endIndent: 15.0,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'Timing:',
                                        style:
                                            ktextStyle.copyWith(fontSize: 15.0),
                                      ),
                                      SizedBox(
                                        width: 140.0,
                                      ),
                                      Text(
                                        eveningTiming,
                                        style:
                                            ktextStyle.copyWith(fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Row(
                                    children: <Widget>[
                                      Text(
                                        'Start Location:',
                                        style:
                                            ktextStyle.copyWith(fontSize: 15.0),
                                      ),
                                      SizedBox(
                                        width: 80.0,
                                      ),
                                      Text(
                                        eveningLocation,
                                        textAlign: TextAlign.center,
                                        style: ktextStyle.copyWith(
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              child: Center(
                child: Text(
                  busName,
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

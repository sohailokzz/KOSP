import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:KustSmartApp/constant.dart';

import 'auditorium_requests.dart';
import 'event_card.dart';

class AudiEventDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auditorium Events',
      home: AudiEventFront(),
    );
  }
}

class AudiEventFront extends StatefulWidget {
  @override
  _AudiEventFrontState createState() => _AudiEventFrontState();
}

class _AudiEventFrontState extends State<AudiEventFront> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250.0),
          child: AppBar(
            flexibleSpace: FlexibleSpaceBarSettings(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Events',
                    style: ktextStyle.copyWith(fontSize: 20.0),
                  ),
                  Image.asset(
                    'assets/audi1.png',
                    height: 80.0,
                    color: Colors.white,
                  ),
                ],
              ),
              toolbarOpacity: 2.0,
              minExtent: 20.0,
              maxExtent: 250.0,
              currentExtent: 250.0,
            ),
            backgroundColor: Color(0xFF3B2E7E),
          ),
        ),
        body: EventCard(),
      ),
    );
  }
}








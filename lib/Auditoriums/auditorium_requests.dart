import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kust_online/Auditoriums/event_card_admin.dart';
import 'package:kust_online/constant.dart';


class AudiRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auditorium Requests',
      home: AudiRequestsFront(),
    );
  }
}

class AudiRequestsFront extends StatefulWidget {
  @override
  _AudiRequestsFrontState createState() => _AudiRequestsFrontState();
}

class _AudiRequestsFrontState extends State<AudiRequestsFront> {
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
                    'Requests',
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
        body: EventCardAdmin(),
      ),
    );
  }
}







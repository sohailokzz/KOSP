import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'choose_lost_found.dart';
import 'i_lost.dart';
import 'i_found.dart';

class LostFound extends StatelessWidget {
  static String id = 'lost_found';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Color(0xBF3C2E7F),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
        ),

        backgroundColor: Color(0xBF3C2E7F),
        body: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Lost & Found',
          home: LostFoundFront(),
          routes: {
            ILost.id: (context) => ILost(),
            IFound.id: (context) => IFound(),
          },
        ));
  }
}

class LostFoundFront extends StatefulWidget {
  @override
  _LostFoundFrontState createState() => _LostFoundFrontState();
}

class _LostFoundFrontState extends State<LostFoundFront> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/lostfound.jpg',
            ),
            LostFoundChoose(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import '../constant.dart';
import 'kust_info.dart';

class AboutKUST extends StatelessWidget {
  static String id = 'about_kust';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'About KUST',
        home: AbtKUST(),
      ),
    );
  }
}

class AbtKUST extends StatefulWidget {
  @override
  _AbtKUSTState createState() => _AbtKUSTState();
}

class _AbtKUSTState extends State<AbtKUST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xFF3B2E7E),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/abtkust.jpg',
            ),
            KUSTInfo(),
          ],
        ),
      ),
    );
  }
}



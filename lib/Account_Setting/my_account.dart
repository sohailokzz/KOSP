import 'package:KustSmartApp/account_setting/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:KustSmartApp/constant.dart';
import 'package:KustSmartApp/Home_page_and_menue_page/home_page.dart';

class MyAccount extends StatelessWidget {
  static String id = 'my_account';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Account Details',
      home: MyAccountFront(),
      routes: {
        '/homepage': (context) => HomePage(),
      },
    );
  }
}

class MyAccountFront extends StatefulWidget {
  @override
  _MyAccountFrontState createState() => _MyAccountFrontState();
}

class _MyAccountFrontState extends State<MyAccountFront> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            kBackground(
              assetImage: 'assets/lostfound.jpg',
            ),
            Profile(),
          ],
        ),
      ),
    );
  }
}



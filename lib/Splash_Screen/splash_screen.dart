import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'dart:async';
import 'package:kust_online/constant.dart';

import 'package:kust_online/Account_Setting/welcome.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: Duration(
        seconds: 3,
      ),
      vsync: this,
    );

    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {});
      });

    controller.forward();
    loadData();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  Future<Timer> loadData() async {
    return new Timer(Duration(seconds: 4), onDoneLoading);
  }

  onDoneLoading() async {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => WelcomePage(),
      ),
    );
  }

  final purpleOpicity = Container(
    color: Color(0xD34C2E7F),
  );

  final motiveText = Text(
    'Top class Education in a Vibrant Environment Driven By Research  & Innovation',
    style: ktextStyle.copyWith(
      fontSize: 15.0,
      height: 2.0,
    ),
    textAlign: TextAlign.center,
  );

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    final logoPic = ScaleTransition(
      scale: animation,
      child: Image.asset(
        'assets/logo.gif',
        width: 170.0,
        height: 170.0,
      ),
    );

    final welcomeText = FadeTransition(
      opacity: animation,
      child: SlideTransition(
        position: Tween<Offset>(begin: Offset(0.0, -0.8), end: Offset.zero)
            .animate(controller),
        child: Text(
          'Welcome To KOSP',
          style:
              ktextStyle.copyWith(fontSize: 30.0, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/splashimage.jpg',
            ),
            purpleOpicity,
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                logoPic,
                SizedBox(
                  height: 30.0,
                ),
                welcomeText,
                SizedBox(
                  height: 30.0,
                ),
                motiveText,
              ],
            )
          ],
        ),
      ),
    );
  }
}

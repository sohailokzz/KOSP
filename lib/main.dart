import 'package:flutter/material.dart';
import 'package:kust_online/Splash_Screen/splash_screen.dart';

import 'Splash_Screen/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SplashScreen',
      home: SplashScreen(),

    );
  }
}

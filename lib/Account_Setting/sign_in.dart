import 'package:kust_online/account_setting/signin-details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'package:kust_online/Home_page_and_menue_page/home_page.dart';

class SingIn extends StatelessWidget {
  static String id = 'sign_in';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SignIn Details',
      home: SignInForm(),
      routes: {
        '/homepage': (context) => HomePage(),
      },
    );
  }
}

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
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
            SingInDetails(),
          ],
        ),
      ),
    );
  }
}



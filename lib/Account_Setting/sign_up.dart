import 'package:firebase_auth/firebase_auth.dart';
import 'package:kust_online/account_setting/signup_registration_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'package:kust_online/Home_page_and_menue_page/home_page.dart';

class AccountDetails extends StatelessWidget {
  static String id = 'account_details';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Account Details',
      home: AccountRegistrationForm(),
      routes: {
        '/homepage': (context) => HomePage(),
      },
    );
  }
}

class AccountRegistrationForm extends StatefulWidget {
  @override
  _AccountRegistrationFormState createState() =>
      _AccountRegistrationFormState();
}

class _AccountRegistrationFormState extends State<AccountRegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/lostfound.jpg',
            ),
            RegistraionForm(),
          ],
        ),
      ),
    );
  }
}

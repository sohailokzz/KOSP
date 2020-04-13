import 'package:flutter/material.dart';
import 'package:kust_online/Home_page_and_menue_page/home_page.dart';
import 'package:kust_online/constant.dart';
import 'welcome_button_design.dart';
import 'sign_up.dart';
import 'sign_in.dart';
import 'my_account.dart';

class WelcomePage extends StatelessWidget {
  static String id = 'welcome';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'About Account',
        home: AccountFront(),
        routes: {
          AccountDetails.id: (context) => AccountDetails(),
          SingIn.id: (context) => SingIn(),
          HomePage.id: (context) => HomePage(),
        },
      ),
    );
  }
}

class AccountFront extends StatefulWidget {
  @override
  _AccountFronttate createState() => _AccountFronttate();
}

class _AccountFronttate extends State<AccountFront> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/abtkust.jpg',
            ),
            AccountInfo(),
          ],
        ),
      ),
    );
  }
}

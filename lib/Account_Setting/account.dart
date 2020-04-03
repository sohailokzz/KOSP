import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'account_button_design.dart';
import 'sign_up.dart';
import 'sign_in.dart';
import 'my_account.dart';

class AboutAccount extends StatelessWidget {
  static String id = 'about_account';
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
          MyAccount.id: (context) => MyAccount(),
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

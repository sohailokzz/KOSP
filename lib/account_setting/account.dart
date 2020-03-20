import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'sign_up.dart';
import 'sign_in.dart';
import 'my_account.dart';

class AboutAccount extends StatelessWidget {
  static String id = 'about_account';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About Account',
      home: AccountFront(),
      routes: {
        AccountDetails.id: (context) => AccountDetails(),
        SingIn.id: (context) => SingIn(),
        MyAccount.id: (context) => MyAccount(),
      },
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
            kBackground(
              assetImage: 'assets/abtkust.jpg',
            ),
            AccountInfo(),
          ],
        ),
      ),
    );
  }
}

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF3B2E7E),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/logo.gif',
                        height: 150.0,
                      ),
                      Text(
                        'Account Setting',
                        style: ktextStyle.copyWith(
                          fontSize: 35.0,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 250.0, 25.0, 16.0),
                  decoration: BoxDecoration(
                    color: Color(0xBAFFFFFF),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kMyButton(
                              label: 'My Account',
                              size: 20.0,
                              onPress: () {
                                Navigator.pushNamed(context, MyAccount.id);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kMyButton(
                              label: 'Sign In',
                              size: 20.0,
                              onPress: () {
                                Navigator.pushNamed(context, SingIn.id);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: kMyButton(
                              label: 'Sign Up',
                              size: 20.0,
                              onPress: () {
                                Navigator.pushNamed(context, AccountDetails.id);
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:kust_online/Home_page_and_menue_page/home_page.dart';

import 'package:kust_online/account_setting/sign_in.dart';
import 'package:kust_online/account_setting/sign_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class AccountInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
      body: SafeArea(
        child: Container(
          child: Stack(
            children: <Widget>[
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(25.0, 250.0, 25.0, 180.0),
                  decoration: BoxDecoration(
                    color: Color(0xBAFFFFFF),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.all(30.0),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: KMyButton(
                                height: 40.0,
                                radius: 30.0,
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
                              child: KMyButton(
                                height: 40.0,
                                radius: 30.0,
                                label: 'Sign Up',
                                size: 20.0,
                                onPress: () {
                                  Navigator.pushNamed(
                                      context, AccountDetails.id);
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
                              child: KMyButton(
                                height: 40.0,
                                radius: 30.0,
                                label: 'I Am Guest',
                                size: 20.0,
                                onPress: () {
                                  Navigator.pushReplacementNamed(
                                      context, HomePage.id);
                                },
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

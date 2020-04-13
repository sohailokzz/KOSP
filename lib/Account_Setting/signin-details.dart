import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kust_online/Home_page_and_menue_page/home_page.dart';
import 'package:kust_online/Home_page_and_menue_page/my_menue.dart';
import '../constant.dart';

class SingInDetails extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  String _email;
  String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xBF3C2E7F),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      resizeToAvoidBottomPadding: false,
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
                        'Sign In',
                        style: ktextStyle.copyWith(
                          fontSize: 40.0,
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
                  padding: const EdgeInsets.only(
                      top: 30.0, left: 16.0, right: 16.0, bottom: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Text(
                          'Sign In',
                          style: ktextStyle.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0,
                            color: Color(0xFF3B2E7E),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      KReusableName(
                        nameField: 'Email:',
                        icon: Icons.person,
                      ),
                      TextField(
                        onChanged: (value) {
                          _email = value;
                        },
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Your Email',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      KReusableName(
                        nameField: 'Password:',
                        icon: Icons.lock,
                      ),
                      TextField(
                        onChanged: (value) {
                          _password = value;
                        },
                        textAlign: TextAlign.center,
                        obscureText: true,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Your Password',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RaisedButton(
                          child: Center(
                            child: Text(
                              'Sign In',
                              style: ktextStyle.copyWith(fontSize: 20.0),
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          color: Color(0xFF3B2E7E),
                          onPressed: () async {
                            try {
                              final user =
                                  await _auth.signInWithEmailAndPassword(
                                      email: _email, password: _password);
                              if (user != null) {
                                print('sign Sucess');
                                Navigator.pushReplacementNamed(
                                    context, HomePage.id);
                              }
                            } catch (e) {
                              print(e);
                            }
                          },
                        ),
                      ),
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

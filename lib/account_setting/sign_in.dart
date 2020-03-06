import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import 'package:kust_online/Screens/home_page.dart';

class SingIn extends StatelessWidget {
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
            kBackground(
              assetImage: 'assets/lostfound.jpg',
            ),
            SingInDetails(),
          ],
        ),
      ),
    );
  }
}

class SingInDetails extends StatelessWidget {
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
                      kReusableName(
                        icon: Icons.person,
                        nameField: 'Username:',
                      ),
                      kReusableTextField(
                        hintText: 'Enter Username',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Password:',
                        icon: Icons.lock,
                      ),
                      kReusableTextField(
                        hintText: 'Enter Your Password',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => HomePage(),
                              ),
                            );
                          },
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

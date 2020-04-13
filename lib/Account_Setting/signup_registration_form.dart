import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:kust_online/Home_page_and_menue_page/home_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import '../constant.dart';

class RegistraionForm extends StatefulWidget {
  @override
  _RegistraionFormState createState() => _RegistraionFormState();
}

class _RegistraionFormState extends State<RegistraionForm> {
  final _auth = FirebaseAuth.instance;

  String _email, _password;

  bool showSpinner = false;

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
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SingleChildScrollView(
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
                          'assets/person.png',
                          height: 150.0,
                          color: Colors.white,
                        ),
                        Text(
                          'Registraion',
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
                            'Sign Up',
                            style: ktextStyle.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 25.0,
                              color: Color(0xFF3B2E7E),
                            ),
                          ),
                        ),
                        KReusableName(
                          nameField: 'Email:',
                          icon: Icons.person,
                        ),
                        TextField(
                          onChanged: (value) {
                            _email = value;
                          },
                          keyboardType: TextInputType.emailAddress,
                          textAlign: TextAlign.center,
                          decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Enter Your Email',
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        KReusableName(
                          nameField: 'UserName:',
                          icon: Icons.person,
                        ),
                        TextField(
                          onChanged: (value) {},
                          textAlign: TextAlign.center,
                          decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Enter Your Username',
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        KReusableName(
                          nameField: 'Password:',
                          icon: Icons.lock,
                        ),
                        TextFormField(
                          onChanged: (value) {
                            _password = value;
                          },
                          obscureText: true,
                          textAlign: TextAlign.center,
                          decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Enter Your Password',
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: RaisedButton(
                            onPressed: () async {
                              setState(
                                () {
                                  showSpinner = true;
                                },
                              );
                              try {
                                final newUser =
                                    await _auth.createUserWithEmailAndPassword(
                                        email: _email, password: _password);
                                if (newUser != null) {
                                  print(_email);

                                  Navigator.pushNamedAndRemoveUntil(
                                    context,
                                    HomePage.id,
                                    (Route<dynamic> route) => false,
                                  );
                                }
                                setState(() {
                                  showSpinner = false;
                                });
                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Center(
                              child: Text(
                                'Register',
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
      ),
    );
  }
}

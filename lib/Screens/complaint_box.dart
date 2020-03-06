import 'package:flutter/material.dart';
import 'package:kust_online/Screens/parking_registration.dart';
import 'package:kust_online/constant.dart';
import 'home_page.dart';

class ComplaintBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Complaint Box',
      home: Complaint(),
    );
  }
}

class Complaint extends StatefulWidget {
  @override
  _ComplaintState createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
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
            ComplaintInfo(),
          ],
        ),
      ),
    );
  }
}

class ComplaintInfo extends StatelessWidget {
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
                        'assets/comp.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Complaint Box',
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
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      kReusableName(
                        nameField: 'Name:',
                        icon: Icons.person,
                      ),
                      kReusableTextField(
                        hintText: 'Enter Your Name',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Department:',
                        icon: Icons.school,
                      ),

                      kReusableTextField(
                        hintText: 'Enter Your Department',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Category:',
                      ),
                      kRadioButton(),

                      kReusableName(
                        nameField: 'Description:',
                      ),
                      TextField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 10,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: 'Give Description',
                          hintStyle: ktextStyle.copyWith(fontSize: 15.0, color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RaisedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return MyDialogBox();
                                });
                          },
                          child: Center(
                            child: Text(
                              'Send',
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



class MyDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Complaint has been sent Thank You..!',
                textAlign: TextAlign.center,
                style: ktextStyle.copyWith(
                    color: Color(0xFF3B2E7E), fontSize: 15.0),
              ),
              SizedBox(
                width: 320.0,
                child: Padding(
                  padding:
                  const EdgeInsets.only(top: 10.0, left: 50.0, right: 50.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                    child: Text(
                      "OK",
                      style: ktextStyle.copyWith(fontSize: 15.0),
                    ),
                    color: Color(0xFF3B2E7E),
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

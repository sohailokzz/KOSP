import 'package:kust_online/Parking_Registration/parking_registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'complaint_mydialogbox.dart';

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
                      KReusableName(
                        nameField: 'Name:',
                        icon: Icons.person,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Event Name',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      KReusableName(
                        nameField: 'Department:',
                        icon: Icons.school,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Event Department',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      KReusableName(
                        nameField: 'Category:',
                      ),
                      KRadioButton(),
                      KReusableName(
                        nameField: 'Description:',
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 10,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Give Description',
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
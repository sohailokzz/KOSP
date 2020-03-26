import 'package:KustSmartApp/Parking_Registration/parking_registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'confirmation_msg.dart';

class VehicelForm extends StatelessWidget {
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
                        'assets/parking.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Parking Details',
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
                      Text(
                        'Vehicle Registration Form',
                        style: ktextStyle.copyWith(
                          fontSize: 19.0,
                          color: Color(0xFF3B2E7E),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Name:',
                        icon: Icons.person,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Your Name',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Father Name:',
                        icon: Icons.person,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Your Father Name',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        icon: Icons.credit_card,
                        nameField: 'CNIC:',
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Your CNIC Number',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Residence:',
                        icon: Icons.home,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Your Residence',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Category:',
                      ),
                      kRadioButton(),
                      kReusableName(
                        nameField: 'Attachment:',
                        icon: Icons.attach_file,
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Add Your Files',
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      kReusableName(
                        nameField: 'Required:',
                      ),
                      kReusableName(
                        nameField: 'Vehicle Documents',
                      ),
                      kReusableName(
                        nameField: 'Student ID Copy',
                      ),
                      kReusableName(
                        nameField: 'HOD Sign/Stamp Bank Recipt',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RaisedButton(
                          onPressed: () {
                            showModalBottomSheet(
                              backgroundColor: Color(0xFF3C2E7F),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(60.0),
                                  topRight: Radius.circular(60.0),
                                ),
                              ),
                              context: context,
                              builder: (builder) {
                                return ConfirmationMessage();
                              },
                            );
                          },
                          child: Center(
                            child: Text(
                              'Submit',
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
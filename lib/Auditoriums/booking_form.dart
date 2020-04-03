import 'package:flutter/material.dart';
import '../constant.dart';
import 'auditorium_dialoguebox.dart';

class BookingForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xBF3C2E7F),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
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
                        'assets/audi1.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Booking',
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
                          hintText: 'Enter Your Name',
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
                          hintText: 'Enter Your Department',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      KReusableName(
                        icon: Icons.event,
                        nameField: 'Event Name:',
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
                        icon: Icons.timer,
                        nameField: 'Event Date:',
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        onChanged: (value) {},
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Enter Event Date',
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      KReusableName(
                        icon: Icons.description,
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
                      SizedBox(
                        height: 20.0,
                      ),
                      KReusableName(
                        icon: Icons.report,
                        nameField: 'Resources Required:',
                      ),
                      TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.multiline,
                        maxLines: 5,
                        cursorColor: Colors.black,
                        decoration: kTextFieldDecoration.copyWith(
                          hintText: 'Mention Resources Required',
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
                              'Request',
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

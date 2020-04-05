import 'package:kust_online/Home_page_and_menue_page/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class SignUpMyDialogBox extends StatelessWidget {
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
                'Your Account has been Register Thank You..!',
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
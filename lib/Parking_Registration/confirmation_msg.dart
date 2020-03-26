import 'package:KustSmartApp/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfirmationMessage extends StatelessWidget {
  const ConfirmationMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.7,
      child: Padding(
        padding: EdgeInsets.only(top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                'Acknowledgement',
                style: ktextStyle.copyWith(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Text(
                'Your form has been Submitted',
                style: ktextStyle.copyWith(
                  fontSize: 15.0,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Mr/Ms:',
                    style: ktextStyle.copyWith(fontSize: 12.0),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 2.0,
                  ),
                  Text(
                    'have applied for issuance of vehicle sticker for the vehicle being No',
                    style: ktextStyle.copyWith(
                      fontSize: 12.0,
                    ),
                  ),
                  Divider(
                    color: Colors.white,
                    thickness: 2.0,
                  ),
                  Text(
                    'Date:',
                    style: ktextStyle.copyWith(fontSize: 15.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16.0, left: 18.0, right: 18.0),
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/homepage');
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      color: Colors.white,
                      child: Center(
                        child: Text(
                          'Done',
                          style: ktextStyle.copyWith(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF3B2E7E),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
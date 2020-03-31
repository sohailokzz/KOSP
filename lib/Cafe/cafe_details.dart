import 'package:flutter/material.dart';
import 'package:kust_online/V.C%20Appointment/v.c_appointment.dart';
import 'package:kust_online/constant.dart';

import 'cafe_choose.dart';

class CafeDetails extends StatelessWidget {
  static String id = 'cafe_details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xBF3C2E7F),
        body: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hostel Details',
          home: CafeScreen(),
        ));
  }
}

class CafeScreen extends StatefulWidget {
  @override
  _CafeScreenState createState() => _CafeScreenState();
}

class _CafeScreenState extends State<CafeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/cafemain.jpg',
            ),
            CafeChoose(),
          ],
        ),
      ),
    );
  }
}

class ReusableCafeRow extends StatelessWidget {
  ReusableCafeRow({this.cafeName});

  final String cafeName;
//  Future<dynamic>  onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
            child: ButtonTheme(
          height: 80.0,
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Color(0xFF3B2E7E),
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
                  return FractionallySizedBox(
                    heightFactor: 0.8,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 80.0, left: 20.0, right: 20.0),
                      child: Column(
                        children: <Widget>[
                          BottomSheetButton(
                            label: 'Breakfast',
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          BottomSheetButton(
                            label: 'Lunch',
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          BottomSheetButton(
                            label: 'Dinner',
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: Center(
              child: Text(
                cafeName,
                style: ktextStyle.copyWith(fontSize: 20.0),
              ),
            ),
          ),
        )),
      ],
    );
  }
}

class BottomSheetButton extends StatelessWidget {
  BottomSheetButton({this.label});
  final String label;
  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      height: 50.0,
      child: RaisedButton(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
        color: Color(0xFFFFFFFF),
        onPressed: () {},
        child: Center(
          child: Text(
            label,
            style:
                ktextStyle.copyWith(color: Color(0xFF3B2E7E), fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import 'cafe_details.dart';

class CafeChoose extends StatelessWidget {
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
                        'assets/cafe.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Cafe Details',
                        style: ktextStyle.copyWith(
                          fontSize: 45.0,
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
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0, bottom: 50.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        ReusableCafeRow(
                          cafeName: 'Main Cafe',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableCafeRow(
                          cafeName: 'IOC',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableCafeRow(
                          cafeName: 'Boys 1',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableCafeRow(
                          cafeName: 'Boys 2',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableCafeRow(
                          cafeName: 'Hill Top',
                        )
                      ],
                    ),
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

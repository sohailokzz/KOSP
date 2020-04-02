import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';
import '../Namaz/namaz_details.dart';
import 'namaz_details.dart';

class NamazChoose extends StatelessWidget {
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
                        'assets/mosque.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Namaz Details',
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
                        ReusableNamazRow(
                          nameNamaz: 'Fajar',
                          timing: '06:00 am',
                          location: 'Main Mosque KUST',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableNamazRow(
                          nameNamaz: 'Zohar',
                          timing: '01:00 pm',
                          location: 'Main Mosque KUST',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableNamazRow(
                          nameNamaz: 'Asar',
                          timing: '04:15 pm',
                          location: 'Main Mosque KUST',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableNamazRow(
                          nameNamaz: 'Maghraib',
                          timing: 'On Sun Down',
                          location: 'Main Mosque KUST',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableNamazRow(
                          nameNamaz: 'Asha',
                          timing: '07:30 pm',
                          location: 'Main Mosque KUST',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        ReusableNamazRow(
                          nameNamaz: 'Juma Mubarak',
                          timing: '01:15 pm',
                          location: 'English Department',
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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'auditoriums_screen.dart';
import 'chemistry_auditorium.dart';
import 'english_auditorium.dart';
import 'ioc_auditorium.dart';
import 'main_auditorium.dart';
import 'maths_auditorium.dart';

class AllAuditorium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Color(0xFF3B2E7E),
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
                        'Auditoriums',
                        style: ktextStyle.copyWith(
                          fontSize: 50.0,
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
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: KMyButton(
                              label: 'Main Auditorium',
                              size: 20.0,
                              onPress: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MainAudiDetails(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ReusableRow(
                        label1: 'IOC',
                        route1: () {
                          Navigator.pushNamed(context, IOCAudiDetails.id);
                        },
                        label2: 'Maths',
                        route2: () {
                          Navigator.pushNamed(context, MathsAudiDetails.id);
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ReusableRow(
                        label1: 'English',
                        route1: () {
                          Navigator.pushNamed(context, EnglishAudiDetails.id);
                        },
                        label2: 'Physics',
                        route2: () {
                          Navigator.pushNamed(context, MathsAudiDetails.id);
                        },
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ReusableRow(
                        label1: 'Chemistry',
                        route1: () {
                          Navigator.pushNamed(context, ChemistryAudiDetails.id);
                        },
                        label2: 'IBS',
                        route2: () {
                          Navigator.pushNamed(context, MathsAudiDetails.id);
                        },
                      )
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

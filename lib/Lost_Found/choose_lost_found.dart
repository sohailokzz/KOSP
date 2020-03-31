import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constant.dart';
import 'i_found.dart';
import 'i_lost.dart';

class LostFoundChoose extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        'assets/lostfound.png',
                        height: 150.0,
                        color: Colors.white,
                      ),
                      Text(
                        'Lost & Found',
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
                  padding: const EdgeInsets.only(
                      top: 50.0, left: 16.0, right: 16.0, bottom: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: KMyButton(
                              label: 'I Lost',
                              size: 20.0,
                              onPress: () {
                                Navigator.pushNamed(context, ILost.id);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: KMyButton(
                              label: 'I Found',
                              size: 20.0,
                              onPress: () {
                                Navigator.pushNamed(context, IFound.id);
                              },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
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

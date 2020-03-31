import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import '../constant.dart';

class AboutKUST extends StatelessWidget {
  static String id = 'about_kust';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(  automaticallyImplyLeading: true,
      backgroundColor: Color(0xBF3C2E7F),
      leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context)
      )
     ),
        backgroundColor: Color(0xBF3C2E7F),
    body: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'About KUST',
      home: AbtKUST(),
    )
    );
  }
}

class AbtKUST extends StatefulWidget {
  @override
  _AbtKUSTState createState() => _AbtKUSTState();
}

class _AbtKUSTState extends State<AbtKUST> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/abtkust.jpg',
            ),
            KUSTInfo(),
          ],
        ),
      ),
    );
  }
}

class KUSTInfo extends StatelessWidget {
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
                        'assets/logo.gif',
                        height: 150.0,
                      ),
                      Text(
                        'About KUST',
                        style: ktextStyle.copyWith(
                          fontSize: 50.0,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 315.0, 25.0, 16.0),
                  decoration: BoxDecoration(
                    color: Color(0xFF3B0E7E),
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

                              label: 'Website',
                              size: 20.0,
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
                              label: 'Semester Rules',
                              size: 20.0,
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
                              label: 'Calender',
                              size: 20.0,
                            ),
                          ),
                        ],
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

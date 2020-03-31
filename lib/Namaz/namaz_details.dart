import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';

import '../Namaz/namaz_choose.dart';

class NamazDetails extends StatelessWidget {
  static String id = 'namaz_details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xBF3C2E7F),
        body: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Hostel Details',
          home: NamazScreen(),
        ));
  }
}

class NamazScreen extends StatefulWidget {
  @override
  _NamazScreenState createState() => _NamazScreenState();
}

class _NamazScreenState extends State<NamazScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/masjid.png',
            ),
            NamazChoose(),
          ],
        ),
      ),
    );
  }
}

class ReusableNamazRow extends StatelessWidget {
  ReusableNamazRow({this.nameNamaz, this.timing, this.location});

  final String nameNamaz;
  final String timing;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: ButtonTheme(
            height: 80.0,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)),
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
                        heightFactor: 0.6,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                nameNamaz,
                                style: ktextStyle.copyWith(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Divider(
                                color: Colors.white,
                                height: 50.0,
                                thickness: 2.0,
                                indent: 30.0,
                                endIndent: 30.0,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Timing:',
                                      style:
                                          ktextStyle.copyWith(fontSize: 15.0),
                                    ),
                                    SizedBox(
                                      width: 140.0,
                                    ),
                                    Text(
                                      timing,
                                      style:
                                          ktextStyle.copyWith(fontSize: 15.0),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      'Location:',
                                      style:
                                          ktextStyle.copyWith(fontSize: 15.0),
                                    ),
                                    SizedBox(
                                      width: 80.0,
                                    ),
                                    Text(
                                      location,
                                      textAlign: TextAlign.center,
                                      style: ktextStyle.copyWith(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    });
              },
              child: Center(
                child: Text(
                  nameNamaz,
                  style: ktextStyle.copyWith(fontSize: 20.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';

class NamazDetails extends StatelessWidget {
  static String id = 'namaz_details';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Details',
      home: NamazScreen(),
    );
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
            kBackground(
              assetImage: 'assets/masjid.png',
            ),
            NamazChoose(),
          ],
        ),
      ),
    );
  }
}

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

import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';

class CafeDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hostel Details',
      home: CafeScreen(),
    );
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
            kBackground(
              assetImage: 'assets/cafemain.jpg',
            ),
            CafeChoose(),
          ],
        ),
      ),
    );
  }
}

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

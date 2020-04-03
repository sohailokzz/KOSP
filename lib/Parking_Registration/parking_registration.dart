import 'package:kust_online/Parking_Registration/vehicle_form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';
import '../Home_page_and_menue_page/home_page.dart';

class ParkingDetails extends StatelessWidget {
  static String id = 'parking_details';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color(0xBF3C2E7F),
        body: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Parking Details',
          home: ParkingRegistrationForm(),
          routes: {
            '/homepage': (context) => HomePage(),
          },
        ));
  }
}

class ParkingRegistrationForm extends StatefulWidget {
  @override
  _ParkingRegistrationFormState createState() =>
      _ParkingRegistrationFormState();
}

class _ParkingRegistrationFormState extends State<ParkingRegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            KBackground(
              assetImage: 'assets/lostfound.jpg',
            ),
            VehicelForm(),
          ],
        ),
      ),
    );
  }
}

enum Category { faculty, admin, student }

class KRadioButton extends StatefulWidget {
  @override
  _KRadioButtonState createState() => _KRadioButtonState();
}

class _KRadioButtonState extends State<KRadioButton> {
  Category _character = Category.faculty;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile<Category>(
          title: const Text(
            'Faculty Member',
            style: kRadioTexStyle,
          ),
          value: Category.faculty,
          groupValue: _character,
          activeColor: Color(0xFF3B2E7E),
          onChanged: (Category value) {
            setState(
              () {
                _character = value;
              },
            );
          },
        ),
        RadioListTile<Category>(
          title: const Text('Admin Staff', style: kRadioTexStyle),
          value: Category.admin,
          groupValue: _character,
          activeColor: Color(0xFF3B2E7E),
          onChanged: (Category value) {
            setState(
              () {
                _character = value;
              },
            );
          },
        ),
        RadioListTile<Category>(
          title: const Text(
            'Student',
            style: kRadioTexStyle,
          ),
          value: Category.student,
          groupValue: _character,
          activeColor: Color(0xFF3B2E7E),
          onChanged: (Category value) {
            setState(
              () {
                _character = value;
              },
            );
          },
        ),
      ],
    );
  }
}

const kRadioTexStyle = TextStyle(
  color: Color(0xFF3B2E7E),
  fontFamily: 'Audiowide',
  fontWeight: FontWeight.normal,
  fontSize: 15.0,
);

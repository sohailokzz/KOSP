import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class Profile extends StatelessWidget {
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
                      SizedBox(
                        height: 10.0,
                      ),
                      Image.asset(
                        'assets/logo.gif',
                        height: 120.0,
                      ),
                      Text(
                        'My Profile',
                        style: ktextStyle.copyWith(
                          fontSize: 40.0,
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
                      top: 5.0, left: 16.0, right: 16.0, bottom: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: CircleAvatar(
                          backgroundImage: AssetImage('assets/person.png'),
                          radius: 50.0,
                        ),
                      ),
                      Center(
                        child: Text(
                          'Aslam Khan',
                          style: ktextStyle.copyWith(
                            fontSize: 15.0,
                            color: Color(0xFF3B2E7E),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'First Name',
                        style: ktextStyle.copyWith(
                          fontSize: 12,
                          color: Color(0xFF3B2E7E),
                        ),
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'Aslam ',
                          hintStyle: ktextStyle.copyWith(
                            fontSize: 15.0,
                            color: Color(0xFF3B2E7E),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Last Name',
                        style: ktextStyle.copyWith(
                          fontSize: 12,
                          color: Color(0xFF3B2E7E),
                        ),
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'Khan',
                          hintStyle: ktextStyle.copyWith(
                            fontSize: 15.0,
                            color: Color(0xFF3B2E7E),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Username',
                        style: ktextStyle.copyWith(
                          fontSize: 12,
                          color: Color(0xFF3B2E7E),
                        ),
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'aslamkhan123',
                          hintStyle: ktextStyle.copyWith(
                            fontSize: 15.0,
                            color: Color(0xFF3B2E7E),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Email',
                        style: ktextStyle.copyWith(
                          fontSize: 12,
                          color: Color(0xFF3B2E7E),
                        ),
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'aslamkhan123@gmail.com',
                          hintStyle: ktextStyle.copyWith(
                            fontSize: 15.0,
                            color: Color(0xFF3B2E7E),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'Department',
                        style: ktextStyle.copyWith(
                          fontSize: 12,
                          color: Color(0xFF3B2E7E),
                        ),
                      ),
                      TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          hintText: 'IOC',
                          hintStyle: ktextStyle.copyWith(
                            fontSize: 15.0,
                            color: Color(0xFF3B2E7E),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
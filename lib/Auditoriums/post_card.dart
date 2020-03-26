
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'HEC three days workshop on blockchain ',
              textAlign: TextAlign.center,
              style: ktextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color(0xFF3B2E7E),
              ),
            ),
            SizedBox(
              width: 20.0,
            ),
            Divider(
              color: Color(0xFF3B2E7E),
              thickness: 2.0,
              indent: 15.0,
              endIndent: 15.0,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Hec has planned three days workshop on blockchain ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10.0,),
                Text(
                  'Januaury 20,2020',
                  style:
                  ktextStyle.copyWith(color: Color(0xFF3B2E7E), fontSize: 12.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Organized By IOC',
                  style:
                  ktextStyle.copyWith(color: Color(0xFF3B2E7E), fontSize: 12.0),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
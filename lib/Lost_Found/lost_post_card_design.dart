import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(60.0),
          topRight: Radius.circular(60.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 50.0,
            decoration: BoxDecoration(
              color: Color(0xFF3B2E7E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(60.0),
                topRight: Radius.circular(60.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 30.0,
                  backgroundColor: Color(0xFF3B2E7E),
                  backgroundImage: AssetImage('assets/person.png'),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Ali Khan',
                  style: ktextStyle.copyWith(
                    fontSize: 15,
                    color: Color(0xFF3B2E7E),
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  '1 hr ago',
                  style: ktextStyle.copyWith(
                    fontSize: 15,
                    color: Color(0xFF3B2E7E),
                  ),
                ),
              ],
            ),
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
              'Laptop bag found near IT department.',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Gray laptop bag with a laptop a book and with umbrella ',
              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w300),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                color: Color(0xFF3B2E7E),
                child: Text(
                  'Claim',
                  style: ktextStyle.copyWith(
                    fontSize: 20.0,
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
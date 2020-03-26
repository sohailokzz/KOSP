import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class CreatePost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'Found Something',
                    style: ktextStyle.copyWith(
                      fontSize: 25.0,
                      color: Color(0xFF3B2E7E),
                    ),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Title',
                    hintStyle: ktextStyle.copyWith(
                      fontSize: 15.0,
                      color: Color(0xFF3B2E7E),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Description:',
                  style: ktextStyle.copyWith(
                    fontSize: 15.0,
                    color: Color(0xFF3B2E7E),
                  ),
                ),
                TextField(
                  maxLines: 10,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Give Description',
                    hintStyle:
                    ktextStyle.copyWith(fontSize: 15.0, color: Colors.grey),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(0.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Add Image:',
                  style: ktextStyle.copyWith(
                    fontSize: 15.0,
                    color: Color(0xFF3B2E7E),
                  ),
                ),
                TextField(
                  enabled: false,
                  maxLines: 5,
                  decoration: InputDecoration(
                    prefixIcon: Center(
                      child: Icon(
                        Icons.add_circle,
                        color: Color(0xFF3B2E7E),
                        size: 50.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(0.0),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: RaisedButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Post',
                        style: ktextStyle.copyWith(fontSize: 20.0),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    color: Color(0xFF3B2E7E),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:KustSmartApp/Auditoriums/post_card.dart';

import 'auditorium_details.dart';
import 'auditorium_requests.dart';

class EventCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        PostCard(),
        SizedBox(
          height: 10.0,
        ),
        PostCard(),
        SizedBox(
          height: 10.0,
        ),
        PostCard(),
        SizedBox(
          height: 10.0,
        ),
        PostCard(),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
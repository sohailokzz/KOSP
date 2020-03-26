import 'package:flutter/cupertino.dart';
import 'package:KustSmartApp/Auditoriums/post_card_admin.dart';

import 'auditorium_requests.dart';

class EventCardAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        PostCardAdmin(),
        SizedBox(
          height: 10.0,
        ),
        PostCardAdmin(),
        SizedBox(
          height: 10.0,
        ),
        PostCardAdmin(),
        SizedBox(
          height: 10.0,
        ),
        PostCardAdmin(),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}

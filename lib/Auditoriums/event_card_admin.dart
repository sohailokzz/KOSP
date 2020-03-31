import 'package:flutter/cupertino.dart';
import 'package:kust_online/Auditoriums/post_card_admin.dart';


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

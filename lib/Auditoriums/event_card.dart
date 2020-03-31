import 'package:flutter/cupertino.dart';
import 'package:kust_online/Auditoriums/post_card.dart';


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
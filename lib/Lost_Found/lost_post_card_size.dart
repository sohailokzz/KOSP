import 'package:flutter/cupertino.dart';
import '../constant.dart';
import 'lost_post_card_design.dart';

class ILostPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(8.0),
      children: <Widget>[
        Center(
          child: Text(
            'Lost Something',
            style: ktextStyle.copyWith(
              fontSize: 25.0,
              color: Color(0xFF3B2E7E),
            ),
          ),
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
        PostCard(),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
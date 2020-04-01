import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class Notifications extends StatelessWidget {
  static String id = "notifications";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Color(0xBF3C2E7F),
      appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Color(0xBF3C2E7F),
          leading: IconButton(icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () => Navigator.pop(context),
          )
      ),
        body: Card(


      child: Container(
            child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Text(
                    'Notifications',

                    style: ktextStyle.copyWith(
                      fontSize: 25.0,
                      backgroundColor: Color(0xBF3C2E7F),
                    ),
                  ),
                ),

                Card(

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
                        padding: const EdgeInsets.only(left: 16.0, top: 20.0),
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30.0,
                              backgroundColor: Color(0xFF3B2E7E),
                              backgroundImage: AssetImage('assets/logo.gif'),
                            ),
                            SizedBox(
                              width: 15.0,
                            ),
                            Text(
                              'From V.C',
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
                          'University shall remain closed till 5 April.The regular classes will be started from 6 April.\n\n'
                          'Thankyou.',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),


                ),
              ]
          ),
        )
        ),

    )
    );

  }
}




/*class _NotificationsFront extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    NotificationsFrontState();

  }
}
class NotificationsFrontState extends State<_NotificationsFront>{

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SafeArea(
       child: Stack(

         children: <Widget>[
           PostCard(),

         ],
       ),
     ),
   );
  }
}*/




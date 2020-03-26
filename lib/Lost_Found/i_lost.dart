import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:KustSmartApp/Lost_Found/lost_post_card_size.dart';
import 'package:KustSmartApp/constant.dart';



class ILost extends StatelessWidget {
  static String id = 'i_lost';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Lost',
      home: ILostFront(),
    );
  }
}

class ILostFront extends StatefulWidget {
  ILostFront({this.label});

  final String label;

  @override
  _ILostFrontState createState() => _ILostFrontState();
}

class _ILostFrontState extends State<ILostFront> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
          length: 2,
          child: Scaffold(

            appBar: PreferredSize(
              preferredSize: Size.fromHeight(250.0),
              child: AppBar(
                flexibleSpace: FlexibleSpaceBarSettings(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Lost And Found',
                        style: ktextStyle.copyWith(fontSize: 20.0),
                      ),
                      Image.asset(
                        'assets/lostfound.png',
                        height: 80.0,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  toolbarOpacity: 2.0,
                  minExtent: 20.0,
                  maxExtent: 250.0,
                  currentExtent: 250.0,
                ),

                backgroundColor: Color(0xFF3B2E7E),

               /* bottom:  TabBar(
                    indicator: BoxDecoration(
                      color: Colors.white,
                    ),
                    unselectedLabelColor: Colors.white,
                    labelColor: Color(0xFF3B2E7E),
                   tabs: <Tab>[
                      Tab(
                        child: Text(
                          'I Lost',
                          style: TextStyle(
                            fontFamily: 'Audiowide',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'I Found',
                          style: TextStyle(
                            fontFamily: 'Audiowide',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ]),*/
              ),
            ),
           body: ILostPost(),
          ),
        )
    );
  }


}





    /*class CreatePost extends StatelessWidget {
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
                      child: IconButton(
                        icon: Icon(
                          Icons.add_circle,
                          color: Color(0xFF3B2E7E),
                          size: 50.0,
                        ),
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
}*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';

class IFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'I Lost',
      home: IFoundFront(),
    );
  }
}

class IFoundFront extends StatefulWidget {


  @override
  _IFoundFrontState createState() => _IFoundFrontState();
}

class _IFoundFrontState extends State<IFoundFront> {
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
                bottom: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.white,
                    ),
                    unselectedLabelColor: Colors.white,
                    labelColor: Color(0xFF3B2E7E),
                    tabs: <Tab>[
                      Tab(
                        child: Text(
                          'I Found',
                          style: TextStyle(
                            fontFamily: 'Audiowide',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'I Lost',
                          style: TextStyle(
                            fontFamily: 'Audiowide',
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
            body: TabBarView(children: [
              IFoundPost(),
              CreatePost(),
            ]),
          ),
        ));
  }
}

class IFoundPost extends StatelessWidget {
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

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
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
                  'Aslam Khan',
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
              'Laptop bag Lost near IT department.',
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

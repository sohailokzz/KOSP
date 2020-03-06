import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kust_online/constant.dart';

class AudiRequests extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auditorium Requests',
      home: AudiRequestsFront(),
    );
  }
}

class AudiRequestsFront extends StatefulWidget {
  @override
  _AudiRequestsFrontState createState() => _AudiRequestsFrontState();
}

class _AudiRequestsFrontState extends State<AudiRequestsFront> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(250.0),
          child: AppBar(
            flexibleSpace: FlexibleSpaceBarSettings(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Requests',
                    style: ktextStyle.copyWith(fontSize: 20.0),
                  ),
                  Image.asset(
                    'assets/audi1.png',
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
          ),
        ),
        body: EventCard(),
      ),
    );
  }
}

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

class PostCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'HEC three days workshop on blockchain ',
              textAlign: TextAlign.center,
              style: ktextStyle.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Color(0xFF3B2E7E),
              ),
            ),
            SizedBox(
              width: 20.0,
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
                'Hec has planned three days workshop on blockchain ',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                SizedBox(width: 10.0,),
                Text(
                  'Januaury 20,2020',
                  style:
                  ktextStyle.copyWith(color: Color(0xFF3B2E7E), fontSize: 12.0),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text(
                  'Organized By IOC',
                  style:
                  ktextStyle.copyWith(color: Color(0xFF3B2E7E), fontSize: 12.0),
                ),
              ],
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color(0xFF3B2E7E),
                  child: Text(
                    'Approved',
                    style: ktextStyle.copyWith(
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Color(0xFF3B2E7E),
                  child: Text(
                    'Not Approved',
                    style: ktextStyle.copyWith(
                      fontSize: 18.0,
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
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

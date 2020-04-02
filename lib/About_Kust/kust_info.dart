import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../constant.dart';

class KUSTInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xBF3C2E7F),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xBF3C2E7F),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/logo.gif',
                        height: 150.0,
                      ),
                      Text(
                        'About KUST',
                        style: ktextStyle.copyWith(
                          fontSize: 50.0,
                          fontWeight: FontWeight.normal,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 275.0, 25.0, 16.0),
                  decoration: BoxDecoration(
                    color: Color(0xBAFFFFFF),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: KMyButton(
                              label: 'Website',
                              size: 20.0,
                     onPress: (){
                                _handleURLButtonPress(context, "https://www.kust.edu.pk");
                             },
                            ),
                          ),
                       ]

                      ),

                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(

                            child: KMyButton(
                              label: 'Semester Rules',
                              size: 20.0,
                            onPress: (){

                            },
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: KMyButton(
                              label: 'Calender',
                              size: 20.0,

                            onPress: (){

                            },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}




class WebViewContainer extends StatefulWidget {
  final url;

  WebViewContainer(this.url);

  @override
  createState() => _WebViewContainerState(this.url);
}

class _WebViewContainerState extends State<WebViewContainer> {
   var _url;
  final _key = UniqueKey();

  _WebViewContainerState(this._url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Expanded(
                child: WebView(
                    key: _key,
                    javascriptMode: JavascriptMode.unrestricted,
                    initialUrl: "https://www.kust.edu.pk"
                ),
            )
          ],
        )
    );
  }

}
void _handleURLButtonPress(BuildContext context, String url) {
  Navigator.push(context,
      MaterialPageRoute(builder: (context) => WebViewContainer(url)));
}

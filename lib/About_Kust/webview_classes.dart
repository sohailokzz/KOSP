import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainerWebsite extends StatefulWidget {
  final url;

  WebViewContainerWebsite(this.url);

  @override
  createState() => _WebViewContainerWebsiteState(this.url);
}

class _WebViewContainerWebsiteState extends State<WebViewContainerWebsite> {
  var _url;
  final _key = UniqueKey();

  _WebViewContainerWebsiteState(this._url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: WebView(
                key: _key,
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: "https://www.kust.edu.pk"),
          ),
        ],
      ),
    );
  }
}

class WebContainerCalendar extends StatefulWidget {
  final url;

  WebContainerCalendar(this.url);

  @override
  createState() => _WebContainerCalendarState(this.url);
}

class _WebContainerCalendarState extends State<WebContainerCalendar> {
  var _url;
  final _key = UniqueKey();

  _WebContainerCalendarState(this._url);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: WebView(
              key: _key,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl:
                  "https://kust.edu.pk/web/index.php/academic-calendar-2019-2020",
            ),
          ),
        ],
      ),
    );
  }
}

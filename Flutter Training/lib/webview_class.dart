import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewClass extends StatefulWidget {
  const WebViewClass({Key? key}) : super(key: key);

  @override
  _WebViewClassState createState() => _WebViewClassState();
}

class _WebViewClassState extends State<WebViewClass> {

  WebViewController? _controller;

  Future _goBack() async{
    if(await _controller!.canGoBack()){
      await _controller!.goBack();
    }
  }

  Future _goForward() async{
    if(await _controller!.canGoForward()){
      await _controller!.goForward();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WebView"),
        actions: [
          IconButton(onPressed: _goBack, icon: Icon(Icons.arrow_back_ios)),
          IconButton(onPressed: _goForward, icon: Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: WebView(
        initialUrl: "https://pub.dev",
        javascriptMode: JavascriptMode.unrestricted,
        userAgent: 'pub.dev',
        onWebViewCreated: (WebViewController webViewController){
          _controller=webViewController;
        },
      ),
    );
  }
}

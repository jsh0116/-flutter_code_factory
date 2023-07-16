import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {

  WebViewController webViewController = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Scaffold 위젯
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),

        // AppBar actions 매개변수
        actions: [
          IconButton(
            onPressed: () {
              webViewController.loadRequest(homeUrl);
            },
            icon: Icon(Icons.home),
          )
        ],
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
      // webview 3.0 version
      // WebView(
      //   // 웹뷰 생성 함수
      //   onWebViewCreated: (WebViewController webViewController) {
      //     this.webViewController = webViewController;
      //   },
      //   initialUrl: 'https://blog.codefactory.ai',
      //   javascriptMode: JavascriptMode.unrestricted,
      // )
    );
  }
}

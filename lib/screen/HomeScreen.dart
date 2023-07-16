import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {

  WebViewController? webViewController;

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
              if (webViewController != null) {
                webViewController!.loadUrl('https://blog.codefactory.ai');
              }
            },
            icon: Icon(Icons.home),
          )
        ],
      ),
      body: WebView(
        // 웹뷰 생성 함수
        onWebViewCreated: (WebViewController webViewController) {
          this.webViewController = webViewController;
        },
        initialUrl: 'https://blog.codefactory.ai',
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}

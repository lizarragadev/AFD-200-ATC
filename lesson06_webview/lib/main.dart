import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWebView(),
    );
  }
}

class MyWebView extends StatelessWidget {
  const MyWebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Browser'),
      ),
      body: WebView(
        initialUrl: "https://fluter.dev",
        javascriptMode: JavascriptMode.unrestricted,
        onProgress: (int progress) {
          print("WebView is loading (progress : $progress%)");
        },
        onwebResourceError: (WebResourceError error) {
          print(error.description);
        },
      ),
    );
  }
}

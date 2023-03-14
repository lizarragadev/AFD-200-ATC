import 'package:flutter/material.dart';
import 'package:lesson06_lab/src/widgets/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatefulWidget {
  String url;
  WebScreen({Key? key, required this.url}) : super(key: key);

  @override
  _WebScreenState createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  late final WebViewController controller;

  @override
  void initState() {
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onProgress: (int progress) {
          print("WebView is loading (progress : $progress%)");
        },
        onNavigationRequest: (NavigationRequest request) {
          print("Opening ${request.url}");
          return NavigationDecision.navigate;
        },
      ))
      ..loadRequest(Uri.parse(widget.url));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text('Website: ${widget.url.split('//')[1]}')),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lesson06_lab/src/widgets/widgets.dart';

class WebScreen extends StatelessWidget {
  String url;
  WebScreen({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: webViewBase(url),
    );
  }
}

import 'package:flutter/material.dart';

class MisBotonesScreen extends StatefulWidget {
  const MisBotonesScreen({Key? key}) : super(key: key);

  @override
  _MisBotonesScreenState createState() => _MisBotonesScreenState();
}

class _MisBotonesScreenState extends State<MisBotonesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: body(),
    );
  }

  PreferredSizeWidget myAppBar() {
    return AppBar(
      title: const Text('Mis botones'),
    );
  }

  Widget body() {
    return Text("Hola");
  }
}

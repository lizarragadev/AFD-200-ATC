import 'package:flutter/material.dart';
import 'package:lesson06_buttons/src/screens/mis_botones_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MisBotonesScreen(),
    );
  }
}

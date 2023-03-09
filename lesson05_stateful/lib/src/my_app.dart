import 'package:flutter/material.dart';
import 'package:lesson_05_stateful/src/screens/contador_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ContadorScreen(),
    );
  }
}

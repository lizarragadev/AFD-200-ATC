// Stateless : Cuando no necesitamos que el widget (UI) se actualice
// Stateful : Cuando necesitamos que el widget (UI) se actualice

import 'package:flutter/material.dart';
import 'package:lesson05/src/screens/widgets_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WidgetsScreen(),
    );
  }
}

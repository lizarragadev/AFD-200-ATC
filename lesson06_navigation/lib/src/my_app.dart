import 'package:flutter/material.dart';
import 'package:lesson06_navigation/src/screens/dos_screen.dart';
import 'package:lesson06_navigation/src/screens/menu_screen.dart';
import 'package:lesson06_navigation/src/screens/tres_screen.dart';
import 'package:lesson06_navigation/src/screens/uno_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MenuScreen(),
      routes: {
        '1': (context) => const UnoScreen(),
        '2': (context) => const DosScreen(),
        '3': (context) => TresScreen(valor: "Por defecto"),
      },
    );
  }
}

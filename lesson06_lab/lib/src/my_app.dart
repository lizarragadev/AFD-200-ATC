import 'package:flutter/material.dart';
import 'package:lesson06_lab/src/screens/carnivora_screen.dart';
import 'package:lesson06_lab/src/screens/home_screen.dart';
import 'package:lesson06_lab/src/screens/queso_screen.dart';
import 'package:lesson06_lab/src/screens/vegetariana_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      routes: {
        'vegetariana': (context) => const VegetarianaScreen(),
        'carnivora': (context) => const CarnivoraScreen(),
        'queso': (context) => const QuesoScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lesson06_navigation/src/screens/menu_screen.dart';

class DosScreen extends StatelessWidget {
  const DosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina Dos'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Pagina 2"),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MenuScreen()));
            },
            child: const Text("Ir a la pantalla menu"),
          ),
        ],
      )),
    );
  }
}

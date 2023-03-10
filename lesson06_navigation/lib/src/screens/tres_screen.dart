import 'package:flutter/material.dart';

class TresScreen extends StatelessWidget {
  const TresScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina Tres'),
        backgroundColor: Colors.yellow,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Pagina 3"),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "1");
            },
            child: const Text("Ir a la pantalla 1"),
          ),
        ],
      )),
    );
  }
}

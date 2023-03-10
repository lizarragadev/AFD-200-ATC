import 'package:flutter/material.dart';

class UnoScreen extends StatelessWidget {
  const UnoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina Uno'),
        backgroundColor: Colors.red,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Pagina 1"),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Salir"),
          ),
        ],
      )),
    );
  }
}

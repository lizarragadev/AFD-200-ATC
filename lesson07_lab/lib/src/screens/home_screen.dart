import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final opciones = {
    '/bottomNav': 'Bottom Navigation Bar',
    '/tabs': 'Tab Bars',
    '/drawers': 'Drawers',
    '/listview': 'List View',
    '/dataTable': 'Data Table',
    '/selectableText': 'Selectable Text',
    '/stack': 'Stack',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lesson 07'),
        backgroundColor: Colors.cyan,
      ),
      body: ListView(children: crearItems(context)),
    );
  }

  List<Widget> crearItems(context) {
    List<Widget> lista = [];
    opciones.forEach((key, value) {
      final tempWidget = ListTile(
        title: Text(value),
        subtitle: Text(key),
        leading: const Icon(Icons.android_rounded),
        trailing: const Icon(Icons.arrow_right),
        onTap: () {
          Navigator.pushNamed(context, key);
        },
      );
      lista.add(tempWidget);
    });
    return lista;
  }
}

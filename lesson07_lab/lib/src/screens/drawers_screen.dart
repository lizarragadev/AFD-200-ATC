import 'package:flutter/material.dart';

class DrawersScreen extends StatefulWidget {
  const DrawersScreen({Key? key}) : super(key: key);

  @override
  _DrawersScreenState createState() => _DrawersScreenState();
}

class _DrawersScreenState extends State<DrawersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Title'),
      ),
      body: Container(),
      drawer: Drawer(
        child: Column(children: [
          Text("asdadasdas"),
          SizedBox(height: 10),
          Icon(Icons.star),
          Text("asdadasdas"),
          SizedBox(height: 10),
          Icon(Icons.star),
        ]),
      ),
    );
  }
}

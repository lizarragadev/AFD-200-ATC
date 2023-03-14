import 'package:flutter/material.dart';

class TabBarsScreen extends StatelessWidget {
  const TabBarsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text('TabBars'),
      ),
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: const [
            ColoredBox(
                color: Colors.deepOrangeAccent,
                child: TabBar(tabs: [
                  Tab(text: "Inicio", icon: Icon(Icons.home)),
                  Tab(text: "Favoritos", icon: Icon(Icons.star)),
                  Tab(text: "Perfil", icon: Icon(Icons.person)),
                ])),
            Expanded(
                child: TabBarView(children: [
              Screen1(),
              Screen2(),
              Screen3(),
            ]))
          ],
        ),
      ),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.home, size: 150, color: Colors.deepPurpleAccent),
        SizedBox(height: 30),
        Text("Inicio",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ],
    ));
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.star, size: 150, color: Colors.orangeAccent),
        SizedBox(height: 30),
        Text("Favoritos",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ],
    ));
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.person, size: 150, color: Colors.green),
        SizedBox(height: 30),
        Text("Perfil",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
      ],
    ));
  }
}

import 'package:flutter/material.dart';

class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({Key? key}) : super(key: key);

  @override
  _BottomNavBarScreenState createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  int selectedPage = 0;
  final screens = [
    const Screen1(),
    const Screen2(),
    const Screen3(),
  ];

  PreferredSizeWidget appBarCustom = AppBar(
    title: const Text("Inicio"),
    backgroundColor: Colors.deepPurpleAccent,
  );

  selectionTab(position) {
    switch (position) {
      case 0:
        modifyAppBar(Colors.deepPurpleAccent, "Inicio");
        break;
      case 1:
        modifyAppBar(Colors.orangeAccent, "Favoritos");
        break;
      case 2:
        modifyAppBar(Colors.green, "Perfil");
        break;
    }
  }

  modifyAppBar(color, titulo) {
    setState(() {
      appBarCustom = AppBar(
        title: Text(titulo),
        backgroundColor: color,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarCustom,
        body: screens[selectedPage],
        bottomNavigationBar: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26, blurRadius: 10, spreadRadius: 5)
                ]),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: BottomNavigationBar(
                currentIndex: selectedPage,
                items: itemsBNB(),
                onTap: (position) {
                  setState(() {
                    selectedPage = position;
                    selectionTab(position);
                  });
                },
              ),
            )));
  }

  List<BottomNavigationBarItem> itemsBNB() {
    List<BottomNavigationBarItem> lista = [];
    lista.add(
        const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"));
    lista.add(const BottomNavigationBarItem(
        icon: Icon(Icons.star), label: "Favoritos"));
    lista.add(const BottomNavigationBarItem(
        icon: Icon(Icons.person), label: "Perfil"));

    return lista;
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

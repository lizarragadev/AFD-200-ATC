import 'package:flutter/material.dart';

class DrawersScreen extends StatefulWidget {
  const DrawersScreen({Key? key}) : super(key: key);

  @override
  _DrawersScreenState createState() => _DrawersScreenState();
}

class _DrawersScreenState extends State<DrawersScreen> {
  int selectedPage = 0;
  final drawerItems = [
    DrawerItem("Inicio", Icons.home),
    DrawerItem("Favoritos", Icons.star),
    DrawerItem("Imagenes", Icons.image),
    DrawerItem("Perfil", Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drawerItems[selectedPage].title),
      ),
      body: getDrawerItemWidget(selectedPage),
      drawer: Drawer(child: Column(children: [cabecera(), cuerpo()])),
    );
  }

  Widget cabecera() {
    return UserAccountsDrawerHeader(
      accountName: const Text("Gustavo Lizárraga"),
      accountEmail: const Text("lizarraga.dev@gmail.com"),
      currentAccountPicture: GestureDetector(
        child: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 34,
              backgroundImage: const Image(
                image: AssetImage("assets/images/profile1.png"),
              ).image,
            )),
        onTap: () {
          print("Clic en la imagen");
        },
      ),
      otherAccountsPictures: [
        CircleAvatar(
          backgroundImage:
              const Image(image: AssetImage("assets/images/profile.png")).image,
        ),
        CircleAvatar(
          backgroundImage:
              const Image(image: AssetImage("assets/images/profile1.png"))
                  .image,
        ),
      ],
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.greenAccent, Colors.green, Colors.green.shade900]),
      ),
    );
  }

  Widget cuerpo() {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < drawerItems.length; i++) {
      drawerOptions.add(ListTile(
        title: Text(drawerItems[i].title),
        leading: Icon(drawerItems[i].icon),
        trailing: const Icon(Icons.arrow_right),
        selected: i == selectedPage,
        onTap: () {
          setState(() {
            selectedPage = i;
            Navigator.of(context).pop();
          });
        },
      ));
    }
    return Column(
      children: drawerOptions,
    );
  }

  Widget getDrawerItemWidget(position) {
    switch (position) {
      case 0:
        return const Screen1();
      case 1:
        return const Screen2();
      case 2:
        return const Screen3();
      default:
        return const Screen4();
    }
  }
}

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Pagina 1"),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Pagina 2"),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Pagina 3"),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Pagina 4"),
    );
  }
}

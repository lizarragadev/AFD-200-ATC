import 'package:flutter/material.dart';
import 'package:lesson07_lab/src/providers/people_provider.dart';

class ListviewListilesScreen extends StatefulWidget {
  const ListviewListilesScreen({Key? key}) : super(key: key);

  @override
  _ListviewListilesScreenState createState() => _ListviewListilesScreenState();
}

class _ListviewListilesScreenState extends State<ListviewListilesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista personas'),
      ),
      body: cargarElementos(),
    );
  }

  Widget cargarElementos() {
    final peopleProvider = PeopleProvider();

    return FutureBuilder(
        future: peopleProvider.cargarDatos(),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ListView(children: listaItems(snapshot.data ?? [])),
          );
        });
  }

  List<Widget> listaItems(List<dynamic> data) {
    List<Widget> personas = [];
    for (var persona in data) {
      personas.add(crearItem(
        persona['name'],
        persona['country'],
        persona['region'],
        persona['image'],
      ));
    }

    return personas;
  }

  Widget crearItem(name, country, region, image) {
    return Card(
      child: ListTile(
        title: Text(name),
        subtitle: Text('$country, $region'),
        leading: CircleAvatar(
            backgroundImage: Image(image: AssetImage(image)).image),
        trailing: const Icon(Icons.keyboard_arrow_right),
        onTap: () {
          print("Hizo click en $name");
        },
      ),
    );
  }
}

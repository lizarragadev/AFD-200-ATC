import 'package:flutter/material.dart';

class MisBotonesScreen extends StatefulWidget {
  const MisBotonesScreen({Key? key}) : super(key: key);

  @override
  _MisBotonesScreenState createState() => _MisBotonesScreenState();
}

class _MisBotonesScreenState extends State<MisBotonesScreen> {
  var items = ["Argentina", "Bolivia", "Brasil", "Chile", "Colombia"];
  String valorSeleccionado = "Argentina";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: body(),
    );
  }

  PreferredSizeWidget myAppBar() {
    return AppBar(
      title: const Text('Mis botones'),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            )),
        PopupMenuButton(
          itemBuilder: (ctx) => [
            const PopupMenuItem(
              child: Text("Opcion 1"),
              value: '1',
            ),
            const PopupMenuItem(
              child: Text("Opcion 2"),
              value: '2',
            ),
            const PopupMenuItem(
              child: Text("Opcion 3"),
              value: '3',
            ),
          ],
          onSelected: (valorSeleccionado) {
            print(valorSeleccionado);
          },
        )
      ],
    );
  }

  Widget body() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {}, child: const Text("Elevated Button")),
          const ElevatedButton(
              onPressed: null, child: const Text("Elevated Button")),
          const SizedBox(height: 20),
          IconButton(onPressed: () {}, icon: const Icon(Icons.people)),
          TextButton(onPressed: () {}, child: const Text("Boton solo texto")),
          OutlinedButton(
              onPressed: () {},
              child: const Text("Boton solo texto con borde")),
          const SizedBox(height: 20),
          ButtonBar(
            children: [
              OutlinedButton(
                onPressed: () {},
                child: Text(
                  "Elemento 1",
                  style: TextStyle(color: Colors.deepOrange),
                ),
                style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side:
                        const BorderSide(width: 2.0, color: Colors.deepOrange)),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Elemento 2"),
                style: OutlinedButton.styleFrom(
                    shape: const StadiumBorder(),
                    side:
                        const BorderSide(width: 2.0, color: Colors.deepOrange)),
              ),
            ],
          ),
          const SizedBox(height: 20),
          DropdownButton(
              value: valorSeleccionado,
              items: items.map((value) {
                return DropdownMenuItem(
                  value: value,
                  child: Row(
                    children: [
                      const Icon(Icons.flag),
                      const SizedBox(width: 10),
                      Text(value),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (valor) {
                setState(() {
                  valorSeleccionado = valor.toString();
                });
              }),
        ],
      ),
    );
  }
}

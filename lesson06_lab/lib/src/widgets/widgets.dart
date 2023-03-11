import 'package:flutter/material.dart';
import 'package:lesson06_lab/src/screens/web_screen.dart';
import 'package:webview_flutter/webview_flutter.dart';

PreferredSizeWidget appBar(context) {
  return AppBar(
    title: const Text('WOW Pizza'),
    backgroundColor: Colors.deepOrangeAccent,
    actions: crearAcciones(context),
  );
}

List<Widget> crearAcciones(context) {
  return [
    IconButton(
      icon: const Icon(Icons.star),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return WebScreen(url: "https://twitter.com");
        }));
      },
    ),
    IconButton(
      icon: const Icon(Icons.facebook),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return WebScreen(url: "https://facebook.com");
        }));
      },
    ),
  ];
}

Widget crearBotones(context) {
  return ButtonBar(
    alignment: MainAxisAlignment.center,
    children: [
      stadiumButton("Vegetariana", "vegetariana", context),
      stadiumButton("Carnivora", "carnivora", context),
      stadiumButton("Queso", "queso", context),
    ],
  );
}

Widget stadiumButton(nombreBoton, nombreRuta, context) {
  return OutlinedButton(
    onPressed: () {
      Navigator.pushNamed(context, nombreRuta);
    },
    style: OutlinedButton.styleFrom(
      shape: const StadiumBorder(),
      side: const BorderSide(color: Colors.deepOrangeAccent, width: 2),
    ),
    child: Text(
      nombreBoton,
      style: const TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
    ),
  );
}

Widget crearContenidoHome() {
  return Center(
    child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: const [
            Image(
              image: AssetImage('assets/images/pizza_mesa.jpeg'),
            ),
            SizedBox(height: 20),
            Text(
              "Hola, soy tu asistentes de Pizzas, ¿Cómo puedo ayudarte?",
              style: TextStyle(
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            )
          ],
        )),
  );
}

Widget crearContenidoImg(imagen) {
  return Center(
    child: Padding(
        padding: const EdgeInsets.all(20),
        child: Image(
          image: AssetImage(imagen),
          width: 200,
        )),
  );
}

Widget webViewBase(url) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("URL que llega:"),
        const SizedBox(height: 10),
        Text(url),
      ],
    ),
  );
  // return WebView(
  //   initialUrl: url,
  //   javascriptMode: JavascriptMode.unrestricted,
  // );
}

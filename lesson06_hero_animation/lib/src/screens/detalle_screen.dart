import 'package:flutter/material.dart';

class DetalleScreen extends StatelessWidget {
  const DetalleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle Hero Animation'),
      ),
      body: GestureDetector(
        child: const Center(
          child: Hero(
              tag: "imageHero",
              child: Image(
                image: AssetImage("assets/images/pizza2.png"),
                width: 350,
              )),
        ),
        onLongPress: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

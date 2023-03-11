import 'package:flutter/material.dart';
import 'package:lesson06_lab/src/widgets/widgets.dart';

class VegetarianaScreen extends StatelessWidget {
  const VegetarianaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      body: Column(
        children: [
          crearBotones(context),
          crearContenidoImg("assets/images/pizza3.png"),
        ],
      ),
    );
  }
}

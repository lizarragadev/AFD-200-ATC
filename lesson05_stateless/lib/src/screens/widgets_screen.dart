import 'package:flutter/material.dart';

class WidgetsScreen extends StatelessWidget {
  const WidgetsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Stateless")), body: body());
  }

  Widget body() {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Text("Curso de Flutter en Cognos Capacitacion",
            style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontFamily: "Times New Roman")),
        const SizedBox(height: 10),
        const Text("Flutter Development",
            style: TextStyle(
                fontSize: 30, color: Colors.green, fontFamily: "Rubik")),
        const SizedBox(height: 10),
        const Image(
          image: AssetImage("assets/images/android.png"),
          width: 200,
        ),
        const SizedBox(height: 10),
        const Image(
          image: NetworkImage(
              "https://az837918.vo.msecnd.net/publishedimages/articles/1733/en-CA/images/1/free-download-this-stunning-alberta-scene-for-your-device-background-image-L-6.jpg"),
          width: 200,
        ),
        const SizedBox(height: 10),
        cardPersonalizado(),
        const SizedBox(height: 10),
        const Icon(Icons.ac_unit),
        const SizedBox(height: 10),
        const Icon(Icons.close),
        const SizedBox(height: 10),
        const Icon(Icons.add),
      ],
    );
  }

  Widget cardPersonalizado() {
    return Card(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: const [
          Image(
            image: AssetImage("assets/images/pokemon.png"),
            width: 50,
          ),
          SizedBox(width: 10),
          Text("Pokemon GO", style: TextStyle(fontSize: 30))
        ],
      ),
    ));
  }
}

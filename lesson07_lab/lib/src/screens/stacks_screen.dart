import 'package:flutter/material.dart';

class StacksScreen extends StatelessWidget {
  const StacksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/paisaje.jpeg"),
                    fit: BoxFit.cover)),
          ),
          Positioned(
              left: 15,
              right: 15,
              bottom: 25,
              child: Card(
                  elevation: 10,
                  color: Colors.white.withOpacity(0.7),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: const [
                          Text("Bolivia",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(height: 10),
                          Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
                            textAlign: TextAlign.justify,
                          )
                        ],
                      ))))
        ],
      ),
    );
  }
}

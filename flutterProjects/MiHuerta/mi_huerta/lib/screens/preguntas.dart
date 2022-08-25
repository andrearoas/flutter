import 'package:flutter/material.dart';

class Pregunta extends StatefulWidget {
  const Pregunta({Key? key}) : super(key: key);

  @override
  State<Pregunta> createState() => _PreguntaState();
}

class _PreguntaState extends State<Pregunta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Preguntas frecuentes",
          style: TextStyle(
            fontFamily: 'Lilita One',
            fontSize: 23.0,
          ),
        ),
      ),
    );
  }
}

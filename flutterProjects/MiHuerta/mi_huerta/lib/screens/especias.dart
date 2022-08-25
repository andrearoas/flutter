import 'package:flutter/material.dart';

class Especia extends StatefulWidget {
  const Especia({Key? key}) : super(key: key);

  @override
  State<Especia> createState() => _EspeciaState();
}

class _EspeciaState extends State<Especia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Cultivos",
          style: TextStyle(
            fontFamily: 'Lilita One',
            fontSize: 23.0,
          ),
        ),
      ),
    );
  }
}

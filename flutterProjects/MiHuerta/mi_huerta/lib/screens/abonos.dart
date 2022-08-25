import 'package:flutter/material.dart';

class Abonos extends StatefulWidget {
  const Abonos({Key? key}) : super(key: key);

  @override
  State<Abonos> createState() => _AbonosState();
}

class _AbonosState extends State<Abonos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Abonos orgánicos",
          style: TextStyle(
            fontFamily: 'Lilita One',
            fontSize: 23.0,
          ),
        ),
      ),
    );
  }
}

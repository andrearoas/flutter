import 'package:flutter/material.dart';

class Plaga extends StatefulWidget {
  const Plaga({Key? key}) : super(key: key);

  @override
  State<Plaga> createState() => _PlagaState();
}

class _PlagaState extends State<Plaga> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Plagas",
          style: TextStyle(
            fontFamily: 'Lilita One',
            fontSize: 23.0,
          ),
        ),
      ),
    );
  }
}

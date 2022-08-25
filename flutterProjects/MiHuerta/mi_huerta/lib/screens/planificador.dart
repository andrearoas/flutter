import 'package:flutter/material.dart';

class Planificador extends StatefulWidget {
  const Planificador({Key? key}) : super(key: key);

  @override
  State<Planificador> createState() => _PlanificadorState();
}

class _PlanificadorState extends State<Planificador> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Planificador",
          style: TextStyle(
            fontFamily: 'Lilita One',
            fontSize: 23.0,
          ),
        ),
      ),
    );
  }
}

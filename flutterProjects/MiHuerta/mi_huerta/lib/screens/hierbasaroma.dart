import 'package:flutter/material.dart';

class Hierbas extends StatefulWidget {
  const Hierbas({Key? key}) : super(key: key);

  @override
  State<Hierbas> createState() => _HierbasState();
}

class _HierbasState extends State<Hierbas> {
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

import 'package:flutter/material.dart';

class Manual extends StatefulWidget {
  const Manual({Key? key}) : super(key: key);

  @override
  State<Manual> createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          "Manual",
          style: TextStyle(
            fontFamily: 'Lilita One',
            fontSize: 23.0,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Hortaliza extends StatefulWidget {
  const Hortaliza({Key? key}) : super(key: key);

  @override
  State<Hortaliza> createState() => _HortalizaState();
}

class _HortalizaState extends State<Hortaliza> {
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
      body: SafeArea(
        child: Container(
          height: 70,
          color: Colors.white10,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    color: Colors.orange),
                child: const Icon(
                  Icons.star,
                  size: 50,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

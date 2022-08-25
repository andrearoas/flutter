import 'package:flutter/material.dart';
import 'package:mi_huerta/screens/especias.dart';
import 'package:mi_huerta/screens/hierbasaroma.dart';
import 'package:mi_huerta/screens/hortalizas.dart';

class Cultivo extends StatefulWidget {
  const Cultivo({Key? key}) : super(key: key);

  @override
  State<Cultivo> createState() => _CultivoState();
}

class _CultivoState extends State<Cultivo> {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Mi huerta en casa",
                      style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Lilita One",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: GridView.count(
                crossAxisCount: 2,
                padding: const EdgeInsets.all(2),
                children: [
                  menu("Hortalizas", 'assets/imagenes/hortalizas.png', 0),
                  menu(
                      "Hierbas\n aromáticas", 'assets/imagenes/lavanda.png', 1),
                  menu("Especias", 'assets/imagenes/especia.png', 2),
                ]),
          ),
        ],
      ),
    );
  }

  Card menu(String tittle, String img, int index) {
    return Card(
      elevation: 10,
      margin: const EdgeInsets.all(20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          gradient: const LinearGradient(
            begin: FractionalOffset(0.0, 1.0),
            end: FractionalOffset(3.0, -1.0),
            colors: [
              Color.fromARGB(69, 139, 148, 156),
              Color.fromARGB(88, 228, 235, 238)
            ],
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.white,
              blurRadius: 10,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: InkWell(
          splashColor: Colors.greenAccent,
          onTap: () {
            if (index == 0) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Hortaliza())));
              //item 1
            }
            if (index == 1) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Hierbas())));
              // item 2
            }
            if (index == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Especia())));
              //item 3
            }
          },
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 20),
              Center(
                child: Image.asset(
                  img,
                  height: 75,
                  width: 80,
                ),
              ),
              const SizedBox(height: 10),
              Center(
                child: Text(
                  tittle,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontFamily: "Lilita One",
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

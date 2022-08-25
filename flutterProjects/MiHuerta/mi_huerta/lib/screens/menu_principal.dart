import 'package:flutter/material.dart';
import 'package:mi_huerta/screens/abonos.dart';
import 'package:mi_huerta/screens/cultivos.dart';
import 'package:mi_huerta/screens/manualhuerta.dart';
import 'package:mi_huerta/screens/plagas.dart';
import 'package:mi_huerta/screens/planificador.dart';
import 'package:mi_huerta/screens/preguntas.dart';

class Menuprincipal extends StatefulWidget {
  const Menuprincipal({Key? key}) : super(key: key);

  @override
  State<Menuprincipal> createState() => _MenuprincipalState();
}

class _MenuprincipalState extends State<Menuprincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Menu principal',
          style: TextStyle(
            fontFamily: 'Lilita One',
            fontSize: 23.0,
          ),
        ),
      ),
      body: Column(
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
                menu("Cultivos", 'assets/imagenes/planta.png', 0),
                menu("Planificador", 'assets/imagenes/calendario.png', 1),
                menu("Plagas", 'assets/imagenes/plagas.png', 2),
                menu("Abonos", 'assets/imagenes/fertilizante.png', 3),
                menu("Empieza\ntu huerta", 'assets/imagenes/manual.png', 4),
                menu("Preguntas", 'assets/imagenes/pregunta.png', 5),
              ],
            ),
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
                  MaterialPageRoute(builder: ((context) => const Cultivo())));
              //item 1
            }
            if (index == 1) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const Planificador())));
              // item 2
            }
            if (index == 2) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Plaga())));
              //item 3
            }
            if (index == 3) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Abonos())));
              //item 4
            }
            if (index == 4) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Manual())));
              //item 5
            }
            if (index == 5) {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const Pregunta())));
              //item 6
            }
          },
          child: Column(
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

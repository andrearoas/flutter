import 'package:flutter/material.dart';
import 'package:mi_huerta/screens/abonos.dart';
import 'package:mi_huerta/screens/cultivos.dart';
import 'package:mi_huerta/screens/especias.dart';
import 'package:mi_huerta/screens/hierbasaroma.dart';
import 'package:mi_huerta/screens/hortalizas.dart';
import 'package:mi_huerta/screens/login.dart';
import 'package:mi_huerta/screens/manualhuerta.dart';
import 'package:mi_huerta/screens/menu_principal.dart';
import 'package:mi_huerta/screens/plagas.dart';
import 'package:mi_huerta/screens/planificador.dart';
import 'package:mi_huerta/screens/preguntas.dart';
import 'package:mi_huerta/screens/registrarse.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: "Mi huerta",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: 'login',
      routes: {
        'login': (context) => Login(),
        'menu_principal': (context) => Menuprincipal(),
        'registrarse': (context) => Registar(),
        'cultivos': (context) => Cultivo(),
        'planificador': (context) => Planificador(),
        'plagas': (context) => Plaga(),
        'abonos': (context) => Abonos(),
        'manualhuerta': (context) => Manual(),
        'preguntas': (context) => Pregunta(),
        'hortalizas': (context) => Hortaliza(),
        'hierbasaroma': (context) => Hierbas(),
        'especias': (context) => Especia(),
      },
    );
  }
}

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

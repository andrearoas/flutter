import 'package:flutter/material.dart';
import 'menu_principal.dart';

class Registar extends StatefulWidget {
  const Registar({Key? key}) : super(key: key);

  @override
  _RegistarState createState() => _RegistarState();
}

class _RegistarState extends State<Registar> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Flexible(
              child: Image.asset(
                'assets/imagenes/mihuerta_logo.png',
                height: 200.0,
              ),
            ),
            espacio(),
            espacio(),
            _campoUsuario(),
            espacio(),
            _campoContrasena(),
            espacio(),
            _campoContrasena2(),
            const SizedBox(
              height: 40.0,
            ),
            _botonLogin2(),
          ],
        ),
      ),
    ));
  }

  Widget espacio() {
    return const SizedBox(
      height: 15.0,
    );
  }

  Widget _campoUsuario() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            icon: Icon(Icons.person),
            hintText: 'Correo electrónico',
            labelText: 'Correo electrónico',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _campoContrasena() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.password),
            hintText: 'Contraseña',
            labelText: 'Contraseña',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _campoContrasena2() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          obscureText: true,
          decoration: const InputDecoration(
            icon: Icon(Icons.password),
            hintText: 'Repita contraseña',
            labelText: 'Contraseña',
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {},
        ),
      );
    });
  }

  Widget _botonLogin2() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 10.0,
          color: Colors.white,
          onPressed: () {
            final route =
                MaterialPageRoute(builder: (context) => const Menuprincipal());
            Navigator.push(context, route);
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: const Text(
              'REGISTRARSE',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontFamily: 'Lilita One',
                fontWeight: FontWeight.bold,
              ),
            ),
          ));
    });
  }
}

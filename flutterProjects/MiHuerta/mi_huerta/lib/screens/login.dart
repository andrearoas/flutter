import 'package:flutter/material.dart';
import 'package:mi_huerta/screens/menu_principal.dart';
import 'package:mi_huerta/screens/registrarse.dart';

class Login extends StatefulWidget {
  static String id = 'login';

  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            _botonLogin(),
            const SizedBox(
              height: 50.0,
            ),
            texto1(),
            espacio(),
            _botonRegistro(),
          ],
        ),
      ),
    ));
  }

  Widget texto1() {
    return const Text(
      '¿No tienes una cuenta?',
      style: TextStyle(
        color: Colors.black,
        fontSize: 17.0,
        fontFamily: 'Lilita One',
        fontWeight: FontWeight.bold,
      ),
    );
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
            hintText: 'ejemplo@live.com',
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

  Widget _botonLogin() {
    return StreamBuilder(
        builder: (BuildContext context, AsyncSnapshot snapshot) {
      return RaisedButton(
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: const Text(
              'LOGIN',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontFamily: 'Lilita One',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          elevation: 10.0,
          color: Colors.white,
          onPressed: () {
            final route =
                MaterialPageRoute(builder: (context) => const Menuprincipal());
            Navigator.push(context, route);
          });
    });
  }

  Widget _botonRegistro() {
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
                MaterialPageRoute(builder: (context) => const Registar());
            Navigator.push(context, route);
          },
          child: Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
            child: const Text(
              'SIGN UP HERE',
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

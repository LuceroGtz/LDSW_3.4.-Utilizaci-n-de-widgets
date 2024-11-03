import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CLUB',
      home: Scaffold(
        appBar: AppBar(
          title: Text('CLUB DE LA PELICULA'),
          backgroundColor: const Color.fromARGB(255, 120, 119, 119),
          centerTitle: true,
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Imagen de fondo
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/cine.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        // Contenido
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Mensaje de bienvenida en tres renglones
              Text(
                'Bienvenido\nal club\nde la película',
                style: TextStyle(
                  fontSize: 24,
                  color: const Color.fromARGB(255, 65, 34, 34),
                  fontWeight: FontWeight.bold,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              // Botón para entrar
              ElevatedButton(
                onPressed: () {
                  // Acción del botón
                },
                child: Text('Entrar'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}



import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Administrar Películas')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Acción para añadir o eliminar películas
          },
          child: Text('Agregar o Eliminar Película'),
        ),
      ),
    );
  }
}

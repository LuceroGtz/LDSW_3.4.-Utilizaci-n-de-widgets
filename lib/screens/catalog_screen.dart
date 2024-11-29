
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Catálogo de Películas')),
      body: ListView(
        children: [
          ListTile(
            title: Text('Película 1'),
            leading: Image.network('https://via.placeholder.com/100'),
            onTap: () {
              Navigator.pushNamed(context, '/movieDescription', arguments: {
                'title': 'Película 1',
                'year': '2024',
                'director': 'Director 1',
                'genre': 'Acción',
                'synopsis': 'Sinopsis de la película 1',
                'image': 'https://via.placeholder.com/100',
              });
            },
          ),
          ListTile(
            title: Text('Película 2'),
            leading: Image.network('https://via.placeholder.com/100'),
            onTap: () {
              Navigator.pushNamed(context, '/movieDescription', arguments: {
                'title': 'Película 2',
                'year': '2024',
                'director': 'Director 2',
                'genre': 'Drama',
                'synopsis': 'Sinopsis de la película 2',
                'image': 'https://via.placeholder.com/100',
              });
            },
          ),
        ],
      ),
    );
  }
}

// movie_description_screen.dart
import 'package:flutter/material.dart';

class MovieDescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final movie = ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(title: Text(movie['title']!)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(movie['image']!),
            SizedBox(height: 20),
            Text('Título: ${movie['title']}'),
            Text('Año: ${movie['year']}'),
            Text('Director: ${movie['director']}'),
            Text('Género: ${movie['genre']}'),
            Text('Sinopsis: ${movie['synopsis']}'),
          ],
        ),
      ),
    );
  }
}

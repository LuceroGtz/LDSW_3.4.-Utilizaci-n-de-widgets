import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:crypto/crypto.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String marvelCharacterName = '';
  String marvelCharacterImageUrl = '';

  // Función para obtener datos de un personaje de Marvel
  Future<void> fetchMarvelCharacterData() async {
    final publicKey = 'cfa6bd6b0ec3274c030a7aaba41248d2';  
    final privateKey = '4d8506c0ac58bb85081e590b72ba9a049553efd7';  
    final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
    final hash = md5.convert(utf8.encode('$timestamp$privateKey$publicKey')).toString();
    final randomCharacterId = 1009148; 

    final url = Uri.parse(
      'https://gateway.marvel.com/v1/public/characters/$randomCharacterId?ts=$timestamp&apikey=$publicKey&hash=$hash',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)['data']['results'][0];
      setState(() {
        marvelCharacterName = data['name'];
        marvelCharacterImageUrl = '${data['thumbnail']['path']}.${data['thumbnail']['extension']}';
      });
    } else {
      throw Exception('Error al cargar los datos de Marvel');
    }
  }

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
        
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
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
                 
                },
                child: Text('Entrar'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
              SizedBox(height: 50),
              // Botón para ver personaje de Marvel
              ElevatedButton(
                onPressed: fetchMarvelCharacterData,
                child: Text('Ver Personaje de Marvel'),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
              // Mostrar los datos del personaje
              marvelCharacterName.isNotEmpty
                  ? Column(
                      children: [
                        Text(
                          'Marvel: $marvelCharacterName',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Image.network(marvelCharacterImageUrl),
                      ],
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }
}

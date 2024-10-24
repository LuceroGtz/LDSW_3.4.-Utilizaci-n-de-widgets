import 'package:flutter/material.dart';  

void main() {  
  runApp(MyApp());  
}  

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Welcome to Flutter',  
      home: Scaffold(  
        appBar: AppBar(  
          title: Text('Diseño de aplicaciones móviles'),  
        ),  
        body: MyCustomLayout(),  
      ),  
    );  
  }  
}

class MyCustomLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Unidad 3',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(height: 20), // Espacio entre los textos
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '3.4. Utilización de widgets',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(width: 10), // Espacio entre los elementos del Row
              Text(
                'Primer envío',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 125, 39, 125),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Lucero Gutiérrez Robles',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
          Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Container(
                width: 360,
                height: 200,
                color: const Color.fromARGB(255, 219, 89, 125),
              ),
              Text(
                'Profesora: Lotzy Beatriz Fonseca Chiu',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

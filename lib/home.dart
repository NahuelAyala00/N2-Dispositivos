import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('aisjfkajfka'),
          backgroundColor: Colors.black, // Define a cor de fundo da barra de navegação
        ),
        backgroundColor: Colors.black, // Define a cor de fundo do corpo do aplicativo
        body: Center(
          child: Text(
            'Olá, Mundo!',
            style: TextStyle(
              color: Colors.white, // Define a cor do texto como branca
              fontSize: 24.0,
            ),
          ),
        ),
      ),
    );
  }
}

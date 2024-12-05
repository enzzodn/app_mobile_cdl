import 'package:flutter/material.dart';
import 'escolha_combustivel.dart';
import 'frases_diarias.dart';
import 'tela_jogos.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('APP CDL - Mobile - Enzzo D.N.')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => FuelScreen()));
              },
              child: Text('Escolha de Combustível'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => QuotesScreen()));
              },
              child: Text('Frases do Dia'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => GamesScreen()));
              },
              child: Text('Tela de Jogos'),
            ),
          ],
        ),
      ),
    );
  }
}

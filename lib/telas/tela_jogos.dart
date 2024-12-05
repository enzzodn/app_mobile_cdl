import 'package:flutter/material.dart';
import '../jogos/jokenpo.dart';
import '../jogos/cara_coroa.dart';
import '../jogos/adivinhe_numero.dart';

class GamesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jogos')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => JokenpoGame()));
                },
                child: Text('Jokenpô'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => CaraCoroa()));
                },
                child: Text('Cara ou Coroa'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => AdivinheNumero()));
                },
                child: Text('Adivinhe o Número'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

class JokenpoGame extends StatefulWidget {
  @override
  _JokenpoGameState createState() => _JokenpoGameState();
}

class _JokenpoGameState extends State<JokenpoGame> {
  final List<String> options = ['Pedra', 'Papel', 'Tesoura'];
  String result = '';
  String userChoice = '';
  String computerChoice = '';

  void play(String choice) {
    setState(() {
      userChoice = choice;
      computerChoice = options[Random().nextInt(3)];

      if (userChoice == computerChoice) {
        result = 'Empate!';
      } else if ((userChoice == 'Pedra' && computerChoice == 'Tesoura') ||
          (userChoice == 'Papel' && computerChoice == 'Pedra') ||
          (userChoice == 'Tesoura' && computerChoice == 'Papel')) {
        result = 'Você ganhou!';
      } else {
        result = 'Você perdeu!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Jokenpô')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Escolha:', style: TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: options.map((option) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => play(option),
                  child: Text(option),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text('Você escolheu: $userChoice'),
          Text('Computador escolheu: $computerChoice'),
          SizedBox(height: 20),
          Text(result,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

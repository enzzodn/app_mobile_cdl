import 'package:flutter/material.dart';
import 'dart:math';

class CaraCoroa extends StatefulWidget {
  @override
  _CaraCoroaState createState() => _CaraCoroaState();
}

class _CaraCoroaState extends State<CaraCoroa> {
  String result = '';
  String userChoice = '';
  String flipResult = '';

  void flip(String choice) {
    setState(() {
      userChoice = choice;
      flipResult = Random().nextBool() ? 'Cara' : 'Coroa';

      if (userChoice == flipResult) {
        result = 'Você acertou!';
      } else {
        result = 'Você errou!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cara ou Coroa')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Escolha:', style: TextStyle(fontSize: 20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ['Cara', 'Coroa'].map((choice) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () => flip(choice),
                  child: Text(choice),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Text('Você escolheu: $userChoice'),
          Text('Resultado: $flipResult'),
          SizedBox(height: 20),
          Text(result,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}

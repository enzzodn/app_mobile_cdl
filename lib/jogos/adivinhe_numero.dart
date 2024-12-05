import 'package:flutter/material.dart';
import 'dart:math';

class AdivinheNumero extends StatefulWidget {
  @override
  _AdivinheNumeroState createState() => _AdivinheNumeroState();
}

class _AdivinheNumeroState extends State<AdivinheNumero> {
  final TextEditingController numberController = TextEditingController();
  final int secretNumber = Random().nextInt(100) + 1;
  String feedback = '';

  void guessNumber() {
    int userGuess = int.tryParse(numberController.text) ?? 0;

    setState(() {
      if (userGuess < secretNumber) {
        feedback = 'O número é maior!';
      } else if (userGuess > secretNumber) {
        feedback = 'O número é menor!';
      } else {
        feedback = 'Parabéns! Você acertou!';
      }
    });

    numberController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adivinhe o Número')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Tente adivinhar o número secreto (entre 1 e 100)',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            TextField(
              controller: numberController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Digite um número',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: guessNumber, child: Text('Adivinhar')),
            SizedBox(height: 20),
            Text(feedback, style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}

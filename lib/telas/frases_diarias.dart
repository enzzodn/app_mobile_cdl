import 'package:flutter/material.dart';
import 'dart:math';

class QuotesScreen extends StatelessWidget {
  final List<String> quotes = [
    'Acredite nos seus sonhos.',
    'Cada dia é uma nova oportunidade.',
    'Viva intensamente.',
    'Seja feliz.'
        'Você consegue.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Frases do Dia')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final randomQuote = quotes[Random().nextInt(quotes.length)];
            showDialog(
              context: context,
              builder: (_) => AlertDialog(
                title: Text('Frase do Dia'),
                content: Text(randomQuote),
                actions: [
                  TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text('OK')),
                ],
              ),
            );
          },
          child: Text('Gerar Frase'),
        ),
      ),
    );
  }
}

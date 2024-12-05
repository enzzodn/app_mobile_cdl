import 'package:flutter/material.dart';

class FuelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextEditingController alcoholController = TextEditingController();
    final TextEditingController gasolineController = TextEditingController();

    void calculate() {
      try {
        double alcohol =
            double.parse(alcoholController.text.replaceAll(',', '.'));
        double gasoline =
            double.parse(gasolineController.text.replaceAll(',', '.'));

        String result = (alcohol / gasoline) < 0.7
            ? 'Abasteça com Álcool'
            : 'Abasteça com Gasolina';

        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Resultado'),
            content: Text(result),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context), child: Text('OK')),
            ],
          ),
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (_) => AlertDialog(
            title: Text('Erro'),
            content: Text('Por favor, insira valores válidos.'),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context), child: Text('OK')),
            ],
          ),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(title: Text('Escolha de Combustível')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: alcoholController,
              decoration: InputDecoration(labelText: 'Preço do Álcool'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: gasolineController,
              decoration: InputDecoration(labelText: 'Preço da Gasolina'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: calculate, child: Text('Calcular')),
          ],
        ),
      ),
    );
  }
}

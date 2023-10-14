import 'package:flutter/material.dart';

void main() {
  runApp(CalculatriceApp());
}

class CalculatriceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculatrice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CalculatricePage(),
    );
  }
}

class CalculatricePage extends StatefulWidget {
  @override
  _CalculatricePageState createState() => _CalculatricePageState();
}

class _CalculatricePageState extends State<CalculatricePage> {
  double _nombre1 = 0.0;
  double _nombre2 = 0.0;
  double _resultat = 0.0;
  TextEditingController _controllerNombre1 = TextEditingController();
  TextEditingController _controllerNombre2 = TextEditingController();

  void _additionner() {
    setState(() {
      _nombre1 = double.parse(_controllerNombre1.text);
      _nombre2 = double.parse(_controllerNombre2.text);
      _resultat = _nombre1 + _nombre2;
    });
  }

  void _soustraire() {
    setState(() {
      _nombre1 = double.parse(_controllerNombre1.text);
      _nombre2 = double.parse(_controllerNombre2.text);
      _resultat = _nombre1 - _nombre2;
    });
  }

  void _multiplier() {
    setState(() {
      _nombre1 = double.parse(_controllerNombre1.text);
      _nombre2 = double.parse(_controllerNombre2.text);
      _resultat = _nombre1 * _nombre2;
    });
  }

  void _diviser() {
    setState(() {
      _nombre1 = double.parse(_controllerNombre1.text);
      _nombre2 = double.parse(_controllerNombre2.text);
      _resultat = _nombre1 / _nombre2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              
              controller: _controllerNombre1,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nombre 1',
              ),
            ),
            TextField(
              controller: _controllerNombre2,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Nombre 2',
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: _additionner,
                  child: Text('+'),
                ),
                ElevatedButton(
                  onPressed: _soustraire,
                  child: Text('-'),
                ),
                ElevatedButton(
                  onPressed: _multiplier,
                  child: Text('*'),
                ),
                ElevatedButton(
                  onPressed: _diviser,
                  child: Text('/'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Résultat : $_resultat',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

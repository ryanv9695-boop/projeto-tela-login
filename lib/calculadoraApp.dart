import 'package:flutter/material.dart';

void main() {
  runApp(const CalculadoraApp());
}

class CalculadoraApp extends StatelessWidget {
  const CalculadoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalculadoraPage(),
    );
  }
}

class CalculadoraPage extends StatefulWidget {
  @override
  _CalculadoraPageState createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  String n1 = "";
  String n2 = "";
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite o 1º número"),
              onChanged: (valor) {
                n1 = valor;
              },
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Digite o 2º número"),
              onChanged: (valor) {
                n2 = valor;
              },
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.parse(n1);
                      double num2 = double.parse(n2);
                      resultado = num1 + num2;
                    });
                  },
                  child: Text("+", style: TextStyle(fontSize: 20)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.parse(n1);
                      double num2 = double.parse(n2);
                      resultado = num1 - num2;
                    });
                  },
                  child: Text("-", style: TextStyle(fontSize: 20)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.parse(n1);
                      double num2 = double.parse(n2);
                      resultado = num1 * num2;
                    });
                  },
                  child: Text("*", style: TextStyle(fontSize: 20)),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.parse(n1);
                      double num2 = double.parse(n2);
                      resultado = num1 / num2;
                    });
                  },
                  child: Text("/", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              "Resultado: $resultado",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
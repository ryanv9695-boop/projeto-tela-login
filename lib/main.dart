import 'package:flutter/material.dart';

void main() => runApp(const MyApp()); // Inicializa a aplicação Flutter[cite: 7]

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( // Configura o widget raiz da aplicação[cite: 31]
      debugShowCheckedModeBanner: false,
      title: 'Meu App',
      home: Scaffold( // Esqueleto padrão da tela[cite: 32]
        appBar: AppBar(
          title: const Text('Tela de Perfil'),
        ),
        body: const Center(
          child: Text(
            'Olá, Flutter!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
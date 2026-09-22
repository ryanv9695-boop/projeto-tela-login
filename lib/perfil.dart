import 'package:flutter/material.dart';
void main() {
 runApp(const MeuAplicativo());
}
class MeuAplicativo extends StatelessWidget {
 const MeuAplicativo({super.key});
 @override
 Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
 appBar: AppBar(
 title: const Text('Meu Perfil'),
 ), // AppB
 body: Center(
 child: Builder(
 builder: (context) {
 return Column(
  mainAxisAlignment: MainAxisAlignment.center,
 children: [

//1. Foto no centro da tela
const CircleAvatar(
  radius: 50,
    child: Icon(Icons.person, size: 50),
),

 const SizedBox(height: 16),

//2. Nome do usuário
 const Text(
'Maria Silva',
style: TextStyle(
  fontSize: 24, 
fontWeight: FontWeight.bold,
),
),
const SizedBox(height: 24),

//3. Contato: Email
const Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  Icon(Icons.email),
  SizedBox(width: 8),
  Text('maria.silva@email.com'),
],
),
const SizedBox(height: 8),

// 4. Contato: Telefone
const Row(
mainAxisAlignment: MainAxisAlignment.center,
children: [
  Icon(Icons.phone),
  SizedBox(width: 8),
  Text('(11) 4992-8922'),
],
),
const SizedBox(height: 32),

//5. Botão de seguir
 ElevatedButton(
 onPressed: () {
ScaffoldMessenger.of(context).showSnackBar(
  const SnackBar(
    content: Text('Você agora segue este perfil!')),
);
 },
child: const Text('Seguir'),

 ), // ElevatedButton
 ],
 ); // Column
 },
 ), // Builder
 ), // Center
), // Scaffold
); // build
}
}
import 'package:flutter/material.dart';

void main() {
  // Roda o aplicativo chamando a classe raiz (CalculadoraApp)
  runApp(const CalculadoraApp());
}

// Classe raiz do app, ela é Stateless porque a estrutura base não muda de estado
class CalculadoraApp extends StatelessWidget {
  const CalculadoraApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp é o esqueleto visual do app que configura o tema e a tela inicial
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Tira aquela faixa vermelha de "DEBUG" no canto da tela
      home: CalculadoraPage(), // Define qual página vai aparecer primeiro para o usuário
    );
  }
}

// Cria a página principal como StatefulWidget porque os valores na tela vão mudar (o estado é mutável)
class CalculadoraPage extends StatefulWidget {
  @override
  _CalculadoraPageState createState() => _CalculadoraPageState();
}

// Classe que gerencia o estado e guarda as variáveis que mudam na tela
class _CalculadoraPageState extends State<CalculadoraPage> {
  // Variáveis para guardar o que o usuário digita nos campos (inicialmente vazias)
  String n1 = "";
  String n2 = "";
  
  // Variável que guarda o resultado da conta (começa com 0)
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    // Scaffold cria a estrutura básica da tela (barra superior e corpo)
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"), // Título que aparece lá em cima no app
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0), // Dá um espaçamento nas bordas para o conteúdo não colar na tela
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza os elementos verticalmente no meio
          children: [
            // Campo de texto para digitar o primeiro número
            TextField(
              keyboardType: TextInputType.number, // Abre o teclado numérico no celular
              decoration: InputDecoration(labelText: "Digite o 1º número"), // Texto de dica dentro da caixinha
              onChanged: (valor) {
                // Toda vez que o usuário digita algo, salva o valor na variável 'n1'
                n1 = valor;
              },
            ),
            SizedBox(height: 20), // Cria um espaço invisível de 20 pixels entre os elementos
            
            // Campo de texto para digitar o segundo número
            TextField(
              keyboardType: TextInputType.number, // Abre o teclado numérico
              decoration: InputDecoration(labelText: "Digite o 2º número"), // Dica da caixinha
              onChanged: (valor) {
                // Toda vez que o usuário digita, salva o valor na variável 'n2'
                n2 = valor;
              },
            ),
            SizedBox(height: 30), // Mais um espaçamento
            
            // Row coloca os botões das operações um do lado do outro na horizontal
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround, // Espaça os botões igualmente
              children: [
                // Botão de Adição (+)
                ElevatedButton(
                  onPressed: () {
                    // setState avisa o Flutter que os dados mudaram e que a tela precisa ser redesenhada
                    setState(() {
                      // Transforma o texto digitado (String) em número com casas decimais (double)
                      double num1 = double.parse(n1);
                      double num2 = double.parse(n2);
                      // Faz a conta de somar e guarda no resultado
                      resultado = num1 + num2;
                    });
                  },
                  child: Text("+", style: TextStyle(fontSize: 20)),
                ),
                
                // Botão de Subtração (-)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.parse(n1);
                      double num2 = double.parse(n2);
                      resultado = num1 - num2; // Faz a subtração
                    });
                  },
                  child: Text("-", style: TextStyle(fontSize: 20)),
                ),
                
                // Botão de Multiplicação (*)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.parse(n1);
                      double num2 = double.parse(n2);
                      resultado = num1 * num2; // Faz a multiplicação
                    });
                  },
                  child: Text("*", style: TextStyle(fontSize: 20)),
                ),
                
                // Botão de Divisão (/)
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double num1 = double.parse(n1);
                      double num2 = double.parse(n2);
                      resultado = num1 / num2; // Faz a divisão
                    });
                  },
                  child: Text("/", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            SizedBox(height: 40), // Espaçamento antes de mostrar o resultado
            
            // Texto que exibe dinamicamente o valor da variável 'resultado' atualizado na tela
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
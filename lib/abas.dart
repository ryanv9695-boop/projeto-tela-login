import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // quantidade de abas
        child: Scaffold(
          appBar: AppBar(
            title: Text('Meu App'),
            // as abas ficam aqui, embaixo do título
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Início'),
                Tab(icon: Icon(Icons.newspaper), text: 'Notícias'),
                Tab(icon: Icon(Icons.person), text: 'Perfil'),
              ],
            ),
          ),
          // o conteúdo de cada aba, na mesma ordem das abas
          body: TabBarView(
            children: [
              // ABA 1: Início
              Container(
                color: Colors.blue.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Bem-vindo ao app!', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 20),
                    Image.network('https://picsum.photos/300/200'),
                  ],
                ),
              ),

              // ABA 2: Notícias
              Container(
                color: Colors.orange.shade100,
                child: ListView(
                  children: [
                    ListTile(title: Text('Cientistas descobrem novo planeta')),
                    ListTile(title: Text('Time local vence o campeonato')),
                    ListTile(title: Text('Cidade inaugura nova ciclovia')),
                    ListTile(title: Text('Estudantes criam robô de limpeza')),
                    ListTile(title: Text('Chuvas fortes no fim de semana')),
                  ],
                ),
              ),

              // ABA 3: Perfil
              Container(
                color: Colors.green.shade100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: AssetImage('assets/Carvalho.jpg'),
                    ),
                    SizedBox(height: 20),
                    Text('Ryan Victor', style: TextStyle(fontSize: 24)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tab Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab Bar'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Pessoal', icon: Icon(Icons.person)),
              Tab(text: 'Formação', icon: Icon(Icons.school)),
              Tab(text: 'Experiência', icon: Icon(Icons.work)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PessoalPage(),
            FormacaoPage(),
            ExperienciaPage(),
          ],
        ),
      ),
    );
  }
}

class PessoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Pessoal'));
  }
}

class FormacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Formação'));
  }
}

class ExperienciaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Experiências'));
  }
}

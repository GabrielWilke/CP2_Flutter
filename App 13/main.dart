import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bottom Navigation Bar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [
    PessoalPage(),
    FormacaoPage(),
    ExperienciaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Pessoal',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Formação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Experiência',
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
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

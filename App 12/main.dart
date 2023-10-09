import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drawer Navigation',
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
    return Scaffold(
      appBar: AppBar(title: Text('Drawer Navigation')),
      drawer: MainDrawer(),
      body: Center(child: Text('Selecione uma opção no menu.')),
    );
  }
}

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Gabriel'),
            accountEmail: Text('gabrielwilkeazevedo@email.com'), // Opcional
            currentAccountPicture: CircleAvatar(
              child: Icon(Icons.person, size: 50.0), // Placeholder para a foto
            ),
          ),
          ListTile(
            title: Text('Pessoal'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => PessoalPage()));
            },
          ),
          ListTile(
            title: Text('Formação'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => FormacaoPage()));
            },
          ),
          ListTile(
            title: Text('Experiência'),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ExperienciaPage()));
            },
          ),
        ],
      ),
    );
  }
}

class PessoalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pessoal')),
      body: Center(),
    );
  }
}

class FormacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formação')),
      body: Center(),
    );
  }
}

class ExperienciaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Experiência')),
      body: Center(),
    );
  }
}

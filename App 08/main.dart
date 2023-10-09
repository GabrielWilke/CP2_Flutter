import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _titulo(),
        backgroundColor: Colors.white,
        body: _corpo(),
      ),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Anúncios Dev"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

  _corpo() {
    return Container(
      child: ListView(
        children: <Widget>[
          _vaga('Desenvolvedor Backend',
              'Salário: 3000,00. Criar aplicações em Angular. Contato: Recrutador@ibm.com'),
          _vaga('Desenvolvedor Frontend',
              'Salário: 3700,00. Criar aplicações em Node.JS. Contato: Recrutador.com'),
          _vaga('Desenvolvedor Backend',
              'Salário: 3000,00. Criar aplicações em PHP. Contato: Recrutador@ibm.com'),
          _vaga('Desenvolvedor Frontend',
              'Salário: 3700,00. Criar aplicações em Node.JS. Contato:Recrutador@accenture.com'),
        ],
      ),
    );
  }

  _textoVaga(String texto) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    );
  }

  _tituloVaga(String titulo) {
    return Text(
      titulo,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.red,
        fontSize: 28,
      ),
    );
  }

  _vaga(String tituloVaga, String textoVaga) {
    return Container(
      margin: EdgeInsets.only(top: 15, bottom: 15, left: 10, right: 10),
      child: Column(children: <Widget>[
        SizedBox(height: 15),
        _tituloVaga(tituloVaga),
        SizedBox(height: 10),
        _textoVaga(textoVaga),
      ]),
    );
  }
}

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
      title: Text("Teste PageView"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

  _corpo() {
    return Container(
      child: PageView(
        children: <Widget>[
          _anuncio('Corinthians', 'corinthians.jpg',
              'Vende-se bandeira do corinthians!'),
          _anuncio(
              'Flamengo', 'Flamengo.jpg', 'Vende-se bandeira do Flamengo!'),
          _anuncio('Vasco', 'Vasco.jpg', 'Vende-se bandeira do Vasco!'),
          _anuncio('Santos', 'Santos.jpg', 'Vende-se bandeira do Santos'),
        ],
      ),
    );
  }

  _foto(String nomeFoto) {
    return Image.asset(
      "assets/images/$nomeFoto",
      height: 300,
      width: 300,
      //fit: BoxFit.fill,
      fit: BoxFit.contain,
      //fit: BoxFit.cover,
    );
  }

  _textoAnuncio(String texto) {
    return Text(
      texto,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.blue,
        fontSize: 20,
      ),
    );
  }

  _tituloAnuncio(String titulo) {
    return Text(
      titulo,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.red,
        fontSize: 36,
      ),
    );
  }

  _anuncio(String tituloAnuncio, String caminhoFoto, String texto) {
    return Container(
      child: Column(children: <Widget>[
        SizedBox(height: 15),
        _tituloAnuncio(tituloAnuncio),
        _foto(caminhoFoto),
        _textoAnuncio(texto),
      ]),
    );
  }
}

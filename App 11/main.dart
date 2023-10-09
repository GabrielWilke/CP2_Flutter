import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulário de Conta Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String nome = '';
  String idade = '';
  String sexo = 'Masculino';
  String escolaridade = 'Ensino Médio';
  double limite = 0.0;
  String brasileiro = 'Sim';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Formulário de Conta Bancária'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                nome = value;
              },
              decoration: InputDecoration(labelText: 'Nome'),
            ),
            TextField(
              onChanged: (value) {
                idade = value;
              },
              decoration: InputDecoration(labelText: 'Idade'),
              keyboardType: TextInputType.number,
            ),
            DropdownButton<String>(
              value: sexo,
              onChanged: (String? newValue) {
                setState(() {
                  sexo = newValue!;
                });
              },
              items: <String>['Masculino', 'Feminino', 'Outro']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            DropdownButton<String>(
              value: escolaridade,
              onChanged: (String? newValue) {
                setState(() {
                  escolaridade = newValue!;
                });
              },
              items: <String>[
                'Ensino Fundamental',
                'Ensino Médio',
                'Ensino Superior',
                'Pós-graduação'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Slider(
              value: limite,
              onChanged: (double value) {
                setState(() {
                  limite = value;
                });
              },
              min: 0,
              max: 10000,
              divisions: 100,
              label: limite.round().toString(),
            ),
            DropdownButton<String>(
              value: brasileiro,
              onChanged: (String? newValue) {
                setState(() {
                  brasileiro = newValue!;
                });
              },
              items: <String>['Sim', 'Não']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailsPage(
                      nome: nome,
                      idade: idade,
                      sexo: sexo,
                      escolaridade: escolaridade,
                      limite: limite,
                      brasileiro: brasileiro,
                    ),
                  ),
                );
              },
              child: Text('Confirmar'),
            ),
          ],
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  final String nome;
  final String idade;
  final String sexo;
  final String escolaridade;
  final double limite;
  final String brasileiro;

  DetailsPage({
    required this.nome,
    required this.idade,
    required this.sexo,
    required this.escolaridade,
    required this.limite,
    required this.brasileiro,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da Conta'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nome: $nome'),
            Text('Idade: $idade'),
            Text('Sexo: $sexo'),
            Text('Escolaridade: $escolaridade'),
            Text('Limite: R\$${limite.toStringAsFixed(2)}'),
            Text('Brasileiro: $brasileiro'),
          ],
        ),
      ),
    );
  }
}

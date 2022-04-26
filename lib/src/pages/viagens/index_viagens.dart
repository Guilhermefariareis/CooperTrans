import 'dart:convert';

import 'package:app_coopertrans/src/models/viagen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaViagens extends StatefulWidget {
  const TelaViagens({Key? key}) : super(key: key);

  @override
  State<TelaViagens> createState() => _TelaViagensState();
}

class _TelaViagensState extends State<TelaViagens> {
  //lista dinâmica de paises
  List<Viagen> lista = [];

  //
  // CARREGAR JSON
  // Leitura de um arquivo Json
  carregarJson() async {
    final String f = await rootBundle.loadString('lib/data/viagens.json');
    final dynamic d = await json.decode(f);
    setState(() {
      d.forEach((item) {
        lista.add(Viagen.fromJson(item));
      });
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await carregarJson();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Viagens'),
        backgroundColor: Color.fromARGB(221, 0, 78, 20),
      ),
      backgroundColor: Colors.white30,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(
                '(' + lista[index].status + ') ' + lista[index].nome,
                style: const TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                '-> Placa: ${lista[index].placa} -> Modelo: ${lista[index].modelo} -> Cidade Origem: ${lista[index].cidade} / Data: ${lista[index].data}',
                style: const TextStyle(fontSize: 18),
              ),
              //ícone lado esquerd
              // leading: const Icon(Icons.),
              //ícone lado direito
              trailing: const Icon(Icons.arrow_right),
              //comportamento
              onTap: () {
                //Navegar para TelaDetalhes passando como argumento
                //o Pais selecionado pelo usuário
                Navigator.pushNamed(context, 't2', arguments: lista[index]);
              },
            );
          },
        ),
      ),
    );
  }
}

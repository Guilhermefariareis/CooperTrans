import 'dart:convert';
import 'package:app_coopertrans/src/models/avisos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TelaAvisos extends StatefulWidget {
  const TelaAvisos({Key? key}) : super(key: key);

  @override
  State<TelaAvisos> createState() => _TelaAvisosState();
}

class _TelaAvisosState extends State<TelaAvisos> {
  //lista dinâmica de paises
  List<Avisos> lista = [];
  //
  // CARREGAR JSON
  // Leitura de um arquivo Json
  carregarJson() async {
    final String f = await rootBundle.loadString('lib/data/avisos.json');
    final dynamic d = await json.decode(f);
    setState(() {
      d.forEach((item) {
        lista.add(Avisos.fromJson(item));
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
        title: const Text('Avisos'),
        backgroundColor: Color.fromARGB(221, 0, 78, 20),
      ),
      backgroundColor: Colors.white30,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView.builder(
          itemCount: lista.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const Icon(
                Icons.warning,
                color: Color(0xFFFF0000),
                size: 40,
              ),
              title: Text(
                lista[index].titulo,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 30,
                  fontFamily: 'Lexend Deca',
                  color: Color.fromARGB(255, 255, 17, 0),
                  fontWeight: FontWeight.normal,
                ),
              ),

              subtitle: Text(
                ' ${lista[index].mensagem}',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              //ícone lado esquerd
              // leading: const Icon(Icons.),
              //ícone lado direito
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Color(0xFF303030),
                size: 20,
              ),
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

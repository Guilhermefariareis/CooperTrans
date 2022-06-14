import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../models/minhas_viagens.dart';
import '../api.dart';

class MinhasPage extends StatefulWidget {
  const MinhasPage({Key? key}) : super(key: key);

  @override
  State<MinhasPage> createState() => _MinhasPageState();
}

class _MinhasPageState extends State<MinhasPage> {
  //LISTA DINÂMICA de Objetos da classe Minhas
  var token = '252|uxVvksrQtvMnhzwobzG1K2KmTO4GJpapCWjX8ntz';

  Future<List<Minhas>> getMinhas() async {
    List<Minhas> lista = [];
    try {
      var resposta = await http.post(
        Uri.parse(Api.URL + 'minhasviagens'),
        headers: {
          "Content-Type": "application/json",
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode(<String, int>{'id': 75}),
      );
      print(resposta.body.toString());
      var dados = json.decode(resposta.body.toString());
      for (var item in dados) {
        lista.add(Minhas.fromJson(item));
      }
    } catch (erro) {
      print(erro.toString());
    }
    return lista;
  }

  @override
  Widget build(BuildContext context) {
    //token = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas'),
        backgroundColor: const Color(0xFF105848),
      ),
      body: FutureBuilder(
        future: getMinhas(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var dados = snapshot.data as List<Minhas>;
            return ListView.builder(
              itemCount: dados.length,
              itemBuilder: (context, index) {
                return SafeArea(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFEEEEEE),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 247, 246, 246),
                        )
                      ],
                    ),
                    child: Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Color.fromARGB(255, 218, 218, 218),
                      child: Stack(
                        children: [
                          ListTile(
                            title: Text(
                                '${dados[index].data_escolha} - ${dados[index].escolha} - ${dados[index].estado_origem} - ${dados[index].cidade_origem} - ${dados[index].estado_destino} - ${dados[index].cidade_destino} '),
                            subtitle: Text(
                                '${dados[index].data_marcacao} - ${dados[index].data_retorno} - ${dados[index].data_retorno}'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}

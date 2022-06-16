import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../models/avisos.dart';
import '../api.dart';

class AvisosPage extends StatefulWidget {
  const AvisosPage({Key? key}) : super(key: key);

  @override
  State<AvisosPage> createState() => _AvisosPageState();
}

class _AvisosPageState extends State<AvisosPage> {
  //LISTA DINÂMICA de Objetos da classe Avisos
  var token = '252|uxVvksrQtvMnhzwobzG1K2KmTO4GJpapCWjX8ntz';

  Future<List<Avisos>> getAvisos() async {
    List<Avisos> lista = [];
    try {
      var resposta = await http.get(
        Uri.parse(Api.URL + 'avisos'),
        headers: {
          "Accept": "application/json",
          'Authorization': 'Bearer $token',
        },
      );
      var dados = json.decode(resposta.body.toString());
      for (var item in dados) {
        lista.add(Avisos.fromJson(item));
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
        title: const Text('Avisos'),
        backgroundColor: const Color(0xFF105848),
      ),
      body: FutureBuilder(
        future: getAvisos(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var dados = snapshot.data as List<Avisos>;
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
                                '${dados[index].id} - ${dados[index].publicar_ate} - ${dados[index].created_at}'),
                            subtitle: Text(
                                '${dados[index].updated_at} - ${dados[index].mensagem}'),
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

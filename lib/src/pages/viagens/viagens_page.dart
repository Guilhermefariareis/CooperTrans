// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../../models/viagem.dart';
import '../api.dart';

class ViagemPage extends StatefulWidget {
  const ViagemPage({Key? key}) : super(key: key);

  @override
  State<ViagemPage> createState() => _ViagemPage();
}

class _ViagemPage extends State<ViagemPage> {
  //LISTA DINÂMICA de Objetos da classe Vez
  var token = '252|uxVvksrQtvMnhzwobzG1K2KmTO4GJpapCWjX8ntz';

  getViagens() async {
    List<Viagem> lista = [];
    try {
      var resposta = await http.get(
        Uri.parse(Api.URL + 'viagens'),
        headers: {
          "Accept": "application/json",
          'Authorization': 'Bearer $token',
        },
      );
      print(resposta.body.toString());
      var dados = json.decode(resposta.body.toString());
      for (var item in dados) {
        lista.add(Viagem.fromJson(item));
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
        title: const Text('Viagens'),
        backgroundColor: const Color(0xFF105848),
      ),
      body: FutureBuilder(
        future: getViagens(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var dados = snapshot.data as List<Viagem>;
            return ListView.builder(
              itemCount: dados.length,
              itemBuilder: (context, index) {
                return SafeArea(
                  child: Container(
                    width: 350,
                    height: 250,
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
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-0.99, -0.8),
                            child: Icon(
                              Icons.person,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),

                          Align(
                            alignment: AlignmentDirectional(-0.98, -1.01),
                            child: Text(
                              '${dados[index].escolha}',
                              style: TextStyle(
                                color: Color.fromARGB(212, 0, 0, 0),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.95, -0.98),
                            child: Text(
                              '${dados[index].dataMarcacao}',
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.98, -0.79),
                            child: Text(
                              '${dados[index].nome}',
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.98, -0.53),
                            child: Text(
                              '${dados[index].descricao}',
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.98, -0.54),
                            child: Icon(
                              Icons.drive_eta_sharp,
                              color: Colors.black,
                              size: 24,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.97, -0.30),
                            child: Text(
                              '${dados[index].cidadeOrigem} - ${dados[index].estadoOrigem} ',
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.98, -0.30),
                            child: Text(
                              '${dados[index].cidadeDestino} - ${dados[index].estadoDestino}',
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${dados[index].distancia} Km',
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.97, 0.49),
                            child: Text(
                              'Viajou em:',
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.97, 0.75),
                            child: Text(
                              'Diferença em dias:',
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.97, 0.21),
                            child: Text(
                              'Marcou em:',
                            ),
                          ),
                          // data marcada
                          Align(
                            alignment: AlignmentDirectional(0.98, 0.22),
                            child: Text(
                              '${dados[index].dataMarcacao}',
                            ),
                          ),
// data escolhida
                          Align(
                            alignment: AlignmentDirectional(0.98, 0.49),
                            child: Text(
                              '${dados[index].dataEscolha}',
                            ),
                          ),
                          //diferença
                          Align(
                            alignment: AlignmentDirectional(0.98, 0.76),
                            child: Text(
                              'Duvida',
                            ),
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

import 'package:app_coopertrans/src/pages/minhas_viagens/index_page.dart';
import 'package:app_coopertrans/src/pages/minhas_viagens/viagem_list.dart';
import 'package:flutter/material.dart';

import '../fila/widgets/fila_list.widget.dart';

class FilaPage extends StatefulWidget {
  const FilaPage({Key? key}) : super(key: key);

  @override
  _FilaPageState createState() => _FilaPageState();
}

class _FilaPageState extends State<FilaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas viagens'),
        backgroundColor: Color(0xFF105848),
        centerTitle: true,
      ),
      body: FilaList(),
    );
  }
}

class ViagemPage extends StatefulWidget {
  const ViagemPage({Key? key}) : super(key: key);

  @override
  _ViagemPageState createState() => _ViagemPageState();
}

class _ViagemPageState extends State<ViagemPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Viagens'),
        backgroundColor: Color(0xFF105848),
        centerTitle: true,
      ),
      body: const MinhaViagem(),
    );
  }
}

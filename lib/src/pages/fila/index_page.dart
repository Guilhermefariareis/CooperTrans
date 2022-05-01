import 'package:flutter/material.dart';

import 'widgets/fila_list.widget.dart';

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
        title: const Text('Disponível para Carregamento Imediato'),
        backgroundColor: Color(0xFF105848),
        centerTitle: true,
      ),
      body: FilaList(),
    );
  }
}

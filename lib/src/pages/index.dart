// ignore_for_file: non_constant_identifier_names

import 'package:app_coopertrans/src/pages/viagens/viagens_page.dart';
import 'package:flutter/material.dart';
import 'avisos/index_avisos.dart';
import 'vez/vez_page.dart';
import 'viagens/viagens_page.dart';
import 'minhas_viagens/minha_viagens.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({Key? key}) : super(key: key);

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final PageViewController = PageController();

  @override
  void dispose() {
    super.dispose();
    PageViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: PageViewController,
        children: const [
          AvisosPage(),
          VezPage(),
          ViagemPage(),
          MinhasPage(),
        ],
      ),
      bottomNavigationBar: AnimatedBuilder(
          animation: PageViewController,
          builder: (context, snapshot) {
            return BottomNavigationBar(
              currentIndex: PageViewController.page?.round() ?? 0,
              onTap: (index) {
                PageViewController.jumpToPage(index);
              },
              unselectedItemColor: Colors.green,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.feedback),
                  label: 'Avisos',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  label: 'Fila',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.local_shipping),
                  label: 'Viagens',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.card_travel),
                  label: 'Minhas viagens',
                ),
              ],
              selectedItemColor: Color(0xFF105848),
            );
          }),
    );
  }
}

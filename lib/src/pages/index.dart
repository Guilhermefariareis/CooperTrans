// ignore_for_file: non_constant_identifier_names

import 'package:app_coopertrans/src/pages/viagens/index_viagens.dart';
import 'package:flutter/material.dart';
import 'fila/index_page.dart';
import 'notification/index_page.dart';
import 'minhas_viagens/minha_fila.dart';

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
          NotificationPage(),
          FilaPage(),
          TelaViagens(),
          MinhaFila(),
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

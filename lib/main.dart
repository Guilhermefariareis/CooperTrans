import 'package:flutter/material.dart';

import 'src/pages/index.dart';
import 'src/pages/login/login_page.dart';
import 'src/pages/splash/splash_page.dart';
import 'src/pages/viagens/viagens_page.dart';
import 'package:app_coopertrans/src/pages/vez/vez_page.dart';
import 'src/pages/avisos/index_avisos.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/splash",
    title: 'Coopertransc',
    routes: {
      "/splash": (context) => const SplashPage(),
      "/home": (context) => const IndexPage(),
      "/login": (context) => const LoginPage(),
      '/vez': (context) => const VezPage(),
      '/viagens': (context) => const ViagemPage(),
      '/avisos': (context) => const AvisosPage(),
    },
  ));
}

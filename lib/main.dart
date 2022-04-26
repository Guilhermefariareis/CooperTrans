import 'package:flutter/material.dart';

import 'src/pages/index.dart';
import 'src/pages/login/login_page.dart';
import 'src/pages/splash/splash_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/splash",
    title: 'Coopertransc',
    routes: {
      "/splash": (context) => const SplashPage(),
      "/home": (context) => const IndexPage(),
      "/login": (context) => const LoginPage(),
    },
  ));
}

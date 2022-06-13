// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:app_coopertrans/src/pages/login/login_controller.dart';
import 'package:app_coopertrans/shared/themes/app_colors.dart';
import 'package:app_coopertrans/shared/themes/app_images.dart';
import 'package:app_coopertrans/shared/themes/app_text_styles.dart';
import 'package:app_coopertrans/shared/widgets/social_login/social_login_button.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

import '../api.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var USUARIO = '040256088472';
  var SENHA = '040256088472';

  Future<Map<String, dynamic>> login(usr, pwd) async {
    var resposta = await http.post(
      Uri.parse(Api.URL + 'login'),
      headers: {
        "Accept": "application/json",
      },
      body: {
        "username": usr,
        "password": pwd,
      },
    );
    print(resposta.body.toString());
    return json.decode(resposta.body);
  }

  final controller = LoginController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.36,
              color: AppColors.primary,
            ),
            Positioned(
                top: 40,
                left: 0,
                right: 0,
                child: Image.asset(
                  AppImages.person,
                  width: 208,
                  height: 300,
                )),
            Positioned(
              bottom: size.height * 0.05,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 30, left: 70, right: 70),
                    child: Text(
                      "Cooperativa dos transportadores Autônomos",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Color(0xFF105848), fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Login do usuário",
                        labelStyle: TextStyle(color: Colors.black),
                      )),
                  TextField(
                      autofocus: true,
                      keyboardType: TextInputType.number,
                      style: TextStyle(color: Color(0xFF105848), fontSize: 20),
                      decoration: InputDecoration(
                        labelText: "Senha do usuário",
                        labelStyle: TextStyle(color: Colors.black),
                      )),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, right: 40, top: 40),
                    child: SocialLoginButton(
                      onTap: () {
                        controller.googleSignIn(context);
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

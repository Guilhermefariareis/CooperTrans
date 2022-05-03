import 'package:flutter/material.dart';

class SocialCadastroButton extends StatelessWidget {
  final VoidCallback onTap;
  const SocialCadastroButton({Key? key, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
            child: const Text('Cadastro'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
            child: const Text('Recuperar Senha'),
          )
        ],
      ),
    );
  }
}

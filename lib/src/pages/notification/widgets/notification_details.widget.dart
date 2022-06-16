import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import '../../../models/notification_model.dart';

class NotificationDetails extends StatelessWidget {
  final NotificationModel notification;

  const NotificationDetails(this.notification, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do aviso'),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              _buildInformation(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      width: 230,
                      margin: const EdgeInsets.only(
                          left: 3, right: 3, top: 15, bottom: 10),
                      child: ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: const Icon(Icons.arrow_back),
                        label: const Text('Voltar'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildInformation() {
    var messageHtml = notification.mensagem;
    return Card(
      child: Container(
        margin: const EdgeInsets.all(30),
        child: Column(children: [
          //Text(
          //  notification.id,
          //  style: const TextStyle(
          //    fontWeight: FontWeight.bold,
          //   color: Colors.amberAccent,
          //   fontSize: 30,
          // ),
          //),
          const SizedBox(
            height: 10,
          ),
          //Text(notification.data),
          //const SizedBox(
          //  height: 10,
          //),
          Html(data: messageHtml)
        ]),
      ),
    );
  }
}

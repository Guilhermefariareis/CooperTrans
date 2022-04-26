// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../../models/notification_model.dart';
import '../../../services/notification_service.dart';
import '../../../widgets/loading.dart';
import 'notification_details.widget.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NotificationService _noticationService = NotificationService();
    return Container(
      child: FutureBuilder(
        future: _noticationService.getNotification(),
        builder: (BuildContext context,
            AsyncSnapshot<List<NotificationModel>> snapshot) {
          if (snapshot.hasError) {
            return Container(
                child: Center(
                    child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Algum erro ocorreu na comunicacao com a API'),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      _noticationService.getNotification();
                    },
                    child: const Text('Tentar novamente'))
              ],
            )));
          }
          if (!snapshot.hasData) {
            return const Loading();
          }

          var data = snapshot.data;
          return Container(
            color: Colors.grey[300],
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: data!.length,
                    itemBuilder: (context, indice) {
                      final item = data[indice];
                      return InkWell(
                        onTap: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => NotificationDetails(
                              item,
                            ),
                          ),
                        ),
                        child: SizedBox(
                          height: 80,
                          child: Card(
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(item.titulo),
                                  ),
                                  Text(item.data_publicacao),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  const Icon(Icons.keyboard_arrow_right_sharp)
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

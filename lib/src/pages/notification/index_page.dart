import 'package:flutter/material.dart';

import 'widgets/notification_list.widget.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avisos'),
        backgroundColor: Color(0xFF105848),
        centerTitle: true,
      ),
      body: const NotificationList(),
    );
  }
}

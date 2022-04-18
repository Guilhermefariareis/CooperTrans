import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/notification_model.dart';

class NetworkException {
  final String message;

  NetworkException(this.message);
}

class NotificationService {
  Future<List<NotificationModel>> getNotification() async {
    final response = await http
        .get(Uri.https('coopertransc.com.br', 'intranet2/public/avisos'));
    final decodedJson = jsonDecode(response.body);
    final result = (decodedJson['data'] as List)
        .map((item) => NotificationModel.fromJson(item))
        .toList();
    return result;
  }
}

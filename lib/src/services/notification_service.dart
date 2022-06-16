import 'dart:convert';
import 'package:http/http.dart' as http;

import '../models/notification_model.dart';
import '../pages/api.dart';

class NetworkException {
  final String message;

  NetworkException(this.message);
}

class NotificationService {
  var token = '252|uxVvksrQtvMnhzwobzG1K2KmTO4GJpapCWjX8ntz';

  Future<List<NotificationModel>> getNotification() async {
    var response = await http.get(
      Uri.parse(Api.URL + 'vez'),
      headers: {
        "Accept": "application/json",
        'Authorization': 'Bearer $token',
      },
    );
    final decodedJson = jsonDecode(response.body);
    final result = (decodedJson['data'] as List)
        .map((item) => NotificationModel.fromJson(item))
        .toList();
    return result;
  }
}

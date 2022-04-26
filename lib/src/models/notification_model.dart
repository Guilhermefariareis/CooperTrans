// ignore_for_file: non_constant_identifier_names

class NotificationModel {
  int id;
  String user_id;
  String data_publicacao;
  String titulo;
  String mensagem;

  NotificationModel(
    this.id,
    this.user_id,
    this.data_publicacao,
    this.titulo,
    this.mensagem,
  );

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      json['id'],
      json['user_id'],
      json['data_publicacao'],
      json['titulo'],
      json['mensagem'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['user_id'] = user_id;
    data['data_publicacao'] = data_publicacao;
    data['titulo'] = titulo;
    data['mensagem'] = mensagem;

    return data;
  }
}

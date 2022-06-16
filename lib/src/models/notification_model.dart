// ignore_for_file: non_constant_identifier_names

class NotificationModel {
  int? id;
  String? mensagem;
  String? publicar_ate;
  String? created_at;
  String? updated_at;

  NotificationModel(this.id, this.mensagem, this.publicar_ate, this.created_at,
      this.updated_at);

  //Transformar os dados no formato JSON para um objeto
  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      json["id"] ?? '',
      json["mensagem"] ?? '',
      json["publicar_ate"] ?? '',
      json["created_at"] ?? '',
      json["updated_at"] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['id'] = id;
    data['mensagem'] = mensagem;
    data['publicar_ate'] = publicar_ate;
    data['created_at'] = created_at;
    data['updated_at'] = updated_at;
    return data;
  }
}

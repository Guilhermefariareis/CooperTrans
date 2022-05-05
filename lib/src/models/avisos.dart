// ignore_for_file: non_constant_identifier_names

class Avisos {
  String id;
  String user_id;
  String data_publicacao;
  String titulo;
  String mensagem;

  Avisos(
      this.id, this.user_id, this.data_publicacao, this.titulo, this.mensagem);

  //Transformar os dados no formato JSON para um objeto
  factory Avisos.fromJson(Map<String, dynamic> json) {
    return Avisos(
      json["id"]["id"],
      json["user_id"]["user_id"],
      json["data_publicacao"]["data_publicacao"],
      json["titulo"]["titulo"],
      json["mensagem"]["mensagem"],
    );
  }
}

class Viagen {
  String status;
  String nome;
  String placa;
  String modelo;
  String data;
  String cidade;
  String distancia;

  Viagen(this.status, this.nome, this.placa, this.modelo, this.data,
      this.cidade, this.distancia);

  //Transformar os dados no formato JSON para um objeto
  factory Viagen.fromJson(Map<String, dynamic> json) {
    return Viagen(
      json["status"]["st"],
      json["nome"]["completo"],
      json["placa"]["plc"],
      json["modelo"]["mdl"],
      json["data"]["dataM"],
      //    json["data"]["dataV"],
      //     json["data"]["diferenca"],
      json["cidade"]["atual"],
      //     json["cidade"]["destino"],
      json["distancia"]["km"],
    );
  }
}

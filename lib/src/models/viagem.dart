class Viagem {
  String status;
  String nome;
  String placa;
  String modelo;
  String data;
  String cidade;
  String distancia;

  Viagem(this.status, this.nome, this.placa, this.modelo, this.data,
      this.cidade, this.distancia);

  //Transformar os dados no formato JSON para um objeto
  factory Viagem.fromJson(Map<String, dynamic> json) {
    return Viagem(
      json["status"]["st"],
      json["nome"]["completo"],
      json["placa"]["plc"],
      json["modelo"]["mdl"],
      json["data"]["dataM"],
      json["cidade"]["atual"],
      json["distancia"]["km"],
// teste commit
    );
  }
}

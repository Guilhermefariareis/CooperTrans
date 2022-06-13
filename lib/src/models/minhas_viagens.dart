class minhasviagens {
  String? id;
  String? id_cooperado;
  String? id_veiculo;
  String? data_marcacao;
  String? hora_marcacao;
  String? escolha;
  String? data_escolha;
  String? hora_escolha;
  String? estado_origem;
  String? cidade_origem;
  String? estado_destino;
  String? cidade_destino;
  String? distancia;
  String? obs;
  String? data_retorno;
  String? perde_vez;
  String? nome;
  String? descricao;
  String? tipo;
  String? placa;
  String? marca;
  String? modelo;

  minhasviagens(
    this.id,
    this.id_cooperado,
    this.id_veiculo,
    this.data_marcacao,
    this.hora_marcacao,
    this.escolha,
    this.data_escolha,
    this.hora_escolha,
    this.estado_origem,
    this.cidade_origem,
    this.estado_destino,
    this.cidade_destino,
    this.distancia,
    this.obs,
    this.data_retorno,
    this.perde_vez,
    this.nome,
    this.descricao,
    this.tipo,
    this.placa,
    this.marca,
    this.modelo,
  );

  //Transformar os dados no formato JSON para um objeto
  factory minhasviagens.fromJson(Map<String, dynamic> json) {
    return minhasviagens(
      json["id"] ?? '',
      json["id_cooperado"] ?? '',
      json["id_veiculo"] ?? '',
      json["data_marcacao"] ?? '',
      json["hora_marcacao"] ?? '',
      json["escolha"] ?? '',
      json["data_escolha"] ?? '',
      json["hora_escolha"] ?? '',
      json["estado_origem"] ?? '',
      json["cidade_origem"] ?? '',
      json["estado_destino"] ?? '',
      json["cidade_destino"] ?? '',
      json["distancia"] ?? '',
      json["obs"] ?? '',
      json["data_retorno"] ?? '',
      json["perde_vez"] ?? '',
      json["nome"] ?? '',
      json["descricao"] ?? '',
      json["tipo"] ?? '',
      json["placa"] ?? '',
      json["marca"] ?? '',
      json["modelo"] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    var data = <String, dynamic>{};
    data['id'] = id;
    data["id"] = id;
    data["id_cooperado"] = id_cooperado;
    data["id_veiculo"] = id_veiculo;
    data["data_marcacao"] = data_marcacao;
    data["hora_marcacao"] = hora_marcacao;
    data["escolha"] = escolha;
    data["data_escolha"] = data_escolha;
    data["hora_escolha"] = hora_escolha;
    data["estado_origem"] = estado_origem;
    data["cidade_origem"] = cidade_origem;
    data["estado_destino"] = estado_destino;
    data["cidade_destino"] = cidade_destino;
    data["distancia"] = distancia;
    data["obs"] = obs;
    data["data_retorno"] = data_retorno;
    data["perde_vez"] = perde_vez;
    data["nome"] = nome;
    data["descricao"] = descricao;
    data["tipo"] = tipo;
    data["placa"] = placa;
    data["marca"] = marca;
    data["modelo"] = modelo;
    return data;
  }
}

//cada instancia da class Favoritos representa um hino que foi marcado como favorito
class Favoritos {
  final int id;
  final int hinoId;

  //Construtor
  Favoritos({required this.id, required this.hinoId});

  //Construtor a partir do banco de dados
  factory Favoritos.fromJson(Map<String, dynamic> json) {
    return Favoritos(id: json['id'], hinoId: json['hino_id']);
  }

  // Método para converter o objeto em um Map para inserção no banco de dados
  Map<String, dynamic> toMap() {
    return {'id': id, 'hino_id': hinoId};
  }
}

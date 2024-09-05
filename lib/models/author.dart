class Author {
  final int id;
  final String name;

  //Construtor
  Author({required this.id, required this.name});

  //Construtor a partir do banco de dados
  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(id: json['id'], name: json['name']);
  }
}

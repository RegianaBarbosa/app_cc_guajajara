class Verse {
  final int id;
  final int songId;
  final String name;
  final String text;
  final String textGj;

  //Construtor
  Verse(
      {required this.id,
      required this.songId,
      required this.name,
      required this.text,
      required this.textGj});

  //Construtor a partir do banco de dados
  factory Verse.fromJson(Map<String, dynamic> json) {
    return Verse(
      id: json['id'],
      songId: json['hino_id'],
      name: json['name'],
      text: json['text'],
      textGj: json['text_gj'],
    );
  }
}

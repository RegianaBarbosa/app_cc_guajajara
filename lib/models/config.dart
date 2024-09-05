import 'enums.dart';

class Config {
  final int id;
  final Language language;
  final Theme theme;
  final int sizeFontTitle;
  final int sizeFontSong;
  final int alinText;

  //Construtor
  Config(
      {required this.id,
      required this.language,
      required this.theme,
      required this.sizeFontTitle,
      required this.sizeFontSong,
      required this.alinText});

  //Construtor a partir do banco de dados
  factory Config.fromJson(Map<String, dynamic> json) {
    return Config(
      id: json['id'],
      language:
          json['lang'] == 'portugues' ? Language.portugues : Language.ingles,
      theme: json['theme'] == 'light' ? Theme.light : Theme.dark,
      sizeFontTitle: json['size_font_title'],
      sizeFontSong: json['size_font_song'],
      alinText: json['alin_text'],
    );
  }

  // Método para converter o objeto em um Map para inserção no banco de dados
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'lang': language.toString().split('.').last,
      'theme': theme.toString().split('.').last,
      'size_font_title': sizeFontTitle,
      'size_font_song': sizeFontSong,
      'alin_text': alinText
    };
  }
}

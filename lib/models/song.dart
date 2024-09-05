import 'author.dart';
import 'verse.dart';
import 'dart:convert';

class Song {
  final int id;
  final String numberSong;
  final String titlePtBr;
  final String titleGj;
  final List<Verse> versesPtBr;
  final List<Verse> versesGj;
  final String verseOrder;
  final List<Author> authors;

  //Construtor
  Song(
      {required this.id,
      required this.numberSong,
      required this.titlePtBr,
      required this.titleGj,
      required this.versesPtBr,
      required this.versesGj,
      required this.verseOrder,
      this.authors = const []});

  //Construtor a partir do banco de dados
  factory Song.fromJson(Map<String, dynamic> json) {
    //Parse verses from XML
    final versesPtBr = _parseVerses(json['text']) ?? [];
    final versesGj = _parseVerses(json['text_gj']) ?? [];

    final authors = (json['authors'] as List)
            ?.map((authorJson) => Author.fromJson(authorJson))
            .toList() ??
        [];

    return Song(
      id: json['id'],
      numberSong: json['numberSong'],
      titlePtBr: json['title'],
      titleGj: json['title_gj'],
      versesPtBr: versesPtBr,
      versesGj: versesGj,
      verseOrder: json['verse_order'],
      authors: authors,
    );
  }
  // Function to parse verses from JSON data
  static List<Verse> _parseVerses(String verseData) {
    final List<dynamic> verseJson = jsonDecode(verseData);
    return verseJson
        .map((verse) => Verse(
              id: verse['id'],
              songId: verse['song_id'],
              name: verse['name'],
              text: verse['text'],
              textGj: verse['text_gj'],
            ))
        .toList();
  }
}

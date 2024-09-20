import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  //Nome do banco de dados
  static const _databaseName = "cc_app_databade.db";
  //Versão do banco
  static const _databaseVersion = 1;

  //Singleton padrão: garante que haja apenas 1 instância dessa classe
  static final DatabaseHelper instance = DatabaseHelper._private();

  //Declaração de atributo privado para armazenar as refs da instância do db
  Database? _database;

  //Construtor privado
  DatabaseHelper._private();

  //Criar banco de dados
  Future<Database> get database async {
    if (_database != null) return _database!;

    //Inicializar banco de dados
    _database = await _initDatabase();
    return _database!;
  }

  //Inicializar criação de tabelas
  _initDatabase() async {
    //obter caminho para o diretório de dados do app
    final databasesPath = await getDatabasesPath();
    final path = join(databasesPath, _databaseName);

    return await openDatabase(
      path,
      version: _databaseVersion,
      onCreate: _onCreate,
    );
  }

  //Criar tabelas
  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE songs (
          id INTEGER PRIMARY KEY,
          numberSong TEXT,
          title TEXT,
          title_gj TEXT,
          lyrics TEXT,
          lyrics_gj TEXT,
          verse_order TEXT
      ),

      CREATE TABLE authors (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          name TEXT
      ),

      CREATE TABLE songs_authors (
          song_id INTEGER,
          author_id INTEGER,
          PRIMARY KEY (song_id, author_id),
          FOREIGN KEY (song_id) REFERENCES songs(id),
          FOREIGN KEY (autor_id) REFERENCES authors(id)
      ),

      CREATE TABLE verses (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          song_id INTEGER,
          name TEXT,
          text TEXT,
          text_gj TEXT,
          FOREIGN KEY (song_id) REFERENCES songs(id),
      ),

      CREATE TABLE favorites (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          song_id INTEGER,
          FOREIGN KEY (song_id) REFERENCES songs(id),
      ),
      
      CREATE TABLE config (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          lang TEXT,
          theme TEXT,
          size_font_titulo INTEGER,
          size_font_hino INTEGER,
          alin_text INTEGER
      )
      ''');
  }
}

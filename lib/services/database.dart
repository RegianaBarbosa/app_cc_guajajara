import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseHelper {
  //Nome do banco de dados
  static final _databaseName = "cantor_c_gj_databade.db";
  //Versão do banco
  static final _databaseVersion = 1;

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
    await db.execute(
      '''
      CREATE TABLE hinos (
          id INTEGER PRIMARY KEY,
          titulo_ptbr TEXT
      ),

      CREATE TABLE autores (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          nome TEXT
      ),

      CREATE TABLE hinos_autores (
          hino_id INTEGER,
          autor_id INTEGER,
          PRIMARY KEY (hino_id, autor_id),
          FOREIGN KEY (hino_id) REFERENCES hinos(id),
          FOREIGN KEY (autor_id) REFERENCES autores(id)
      ),

      CREATE TABLE versos (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          hino_id INTEGER,
          ordem INTEGER,
          texto TEXT,
          FOREIGN KEY (hino_id) REFERENCES hinos(id),
      ),

      CREATE TABLE favoritos (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          hino_id INTEGER,
          FOREIGN KEY (hino_id) REFERENCES hinos(id),
      ),
      
      CREATE TABLE config (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
          idioma TEXT,
          tema TEXT,
          tam_font_titulo INTEGER,
          tam_font_hino INTEGER,
          espacamento_linhas INTEGER
      )
      '''
    );
  }
}

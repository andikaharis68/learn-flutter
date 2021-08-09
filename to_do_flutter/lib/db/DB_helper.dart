import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:to_do_flutter/dao/book_dao.dart';

class DBHelper {
  final tables = [BookDAO.CREATE_TABLE];

  DBHelper._privateConstructor();

  static DBHelper INSTANCE = DBHelper._privateConstructor();

  static Database? _database;

  Future<Database?> get database async {
    if (_database != null) {
      return _database;
    } else {
      _database = await openDB();
      return _database;
    }
  }

  Future<Database?> openDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'to_do.db');

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      tables.forEach((table) async {
        await db.execute(table);
      });
    });
  }

  Future<int?> insert(String tableName, Map<String, dynamic> data) async {
    final Database? db = await INSTANCE.database;
    return db?.insert(tableName, data);
  }
}

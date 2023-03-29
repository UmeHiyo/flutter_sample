import 'dart:async';
import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import '../models/todo.dart';

class DbController {
  DbController._();

  static final DbController db = DbController._();

  static Database? _database;

  /// initDBをしてdatabaseを使用する
  Future<Database> get database async => _database ??= await initDB();

  static const dbName = "FlutterSample.db";

  static final todosTableName = Todo.tableName;

  /// initDB
  /// DataBaseのバージョンが違う場合はtableを作成する
  Future<Database> initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, dbName);
    return await openDatabase(
      path,
      version: 2,
      onCreate: _createTable,
    );
  }

  /// tableを作成する
  Future<void> _createTable(Database db, int version) async {
    final batch = db.batch();
    batch.execute('DROP TABLE IF EXISTS $dbName');
    batch.execute(
      "CREATE TABLE $todosTableName("
      "id TEXT PRIMARY KEY,"
      "text TEXT NOT NULL,"
      "priority INTEGER NOT NULL,"
      "created_at TEXT NOT NULL,"
      "updated_at TEXT NOT NULL,"
      ");",
    );

    await batch.commit();
  }

  /// tableにレコードをinsertする
  /// [json]はレコードの内容
  Future<int> create({
    required String tableName,
    required Map<String, Object?> json,
  }) async {
    final db = await database;
    return db.insert(tableName, json);
  }

  /// tableからデータを取得する
  /// [where]は id = ? のような形式にする
  /// [where]もしくは[whereArgs]がnullの場合は全件取得する
  Future<List<Map<String, Object?>>> get({
    required String tableName,
    String? where,
    List? whereArgs,
  }) async {
    final db = await database;
    if (where == null || whereArgs == null) {
      return db.query(tableName);
    }
    return db.query(
      tableName,
      where: where,
      whereArgs: whereArgs,
    );
  }

  /// tableのidに一致する[primaryKey]を指定してレコードをupdateする
  Future<int> update({
    required String tableName,
    required Map<String, Object?> json,
    required String primaryKey,
  }) async {
    final db = await database;
    return db.update(
      tableName,
      json,
      where: "id = ?",
      whereArgs: [primaryKey],
    );
  }

  /// tableのidに一致する[primaryKey]を指定してレコードを削除する
  Future<int> delete({
    required String tableName,
    required String primaryKey,
  }) async {
    final db = await database;
    var res = db.delete(tableName, where: "id = ?", whereArgs: [primaryKey]);
    return res;
  }
}

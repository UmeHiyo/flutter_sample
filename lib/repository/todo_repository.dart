import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/models/result.dart';
import 'package:flutter_sample/models/todo.dart';
import 'package:flutter_sample/repository/result_repository.dart';

import '../sqLite/dbController.dart';

final todoRepositoryProvider =
    Provider<Repository<Todo>>((ref) => TodoRepositoryImpl());

class TodoRepositoryImpl implements Repository<Todo> {
  TodoRepositoryImpl();

  /// [where]は id = ? のような形式にする
  @override
  Future<Result<List<Todo>>> fetch({
    String? where,
    List? whereArgs,
  }) async {
    return Result.guardFuture(() async {
      final result = await DbController.db.get(
        tableName: Todo.tableName,
        where: where,
        whereArgs: whereArgs,
      );
      return result.map((e) => Todo.fromJson(e)).toList();
    });
  }

  @override
  Future<Result<int>> save(Todo todo) async {
    return Result.guardFuture(
      () async => await DbController.db
          .create(tableName: Todo.tableName, json: todo.toJson()),
    );
  }

  @override
  Future<Result<int>> update(Todo todo) async {
    return Result.guardFuture(
      () async => await DbController.db.update(
        tableName: Todo.tableName,
        json: todo.toJson(),
        primaryKey: todo.id!,
      ),
    );
  }

  @override
  Future<Result<int>> delete(Todo todo) async {
    return Result.guardFuture(
      () async => await DbController.db.delete(
        tableName: Todo.tableName,
        primaryKey: todo.id!,
      ),
    );
  }
}

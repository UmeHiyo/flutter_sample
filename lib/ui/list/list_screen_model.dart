import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/models/result.dart';
import 'package:flutter_sample/models/todo.dart';
import 'package:flutter_sample/repository/result_repository.dart';
import 'package:flutter_sample/repository/todo_repository.dart';
import 'package:flutter_sample/ui/list/list_screen_state.dart';

final listScreenModelProvider =
    StateNotifierProvider<ListScreenModel, ListScreenState>(
        (ref) => ListScreenModel(ref.watch(todoRepositoryProvider)));

class ListScreenModel extends StateNotifier<ListScreenState> {
  /// constructor
  /// インスタンス生成時にデータを取得する
  ListScreenModel(this.todoRepository)
      : super(const ListScreenState(todos: [])) {
    getAllData();
  }

  /// todoRepository
  final Repository<Todo> todoRepository;

  /// 全データを取得する
  Future<Result<List<Todo>>> getAllData() async {
    final result = await todoRepository.fetch(where: null, whereArgs: null);
    return result.when(
      success: (data) {
        state = state.copyWith(todos: data);
        getAllData();
        return Result.success(data: data);
      },
      failure: (error) {
        return Result.failure(error: error);
      },
    );
  }

  /// [todo]で指定したデータを削除する
  Future<Result<int>> delete(Todo todo) async {
    final result = await todoRepository.delete(todo);
    return result.when(
      success: (data) {
        getAllData();
        return Result.success(data: data);
      },
      failure: (error) {
        return Result.failure(error: error);
      },
    );
  }
}

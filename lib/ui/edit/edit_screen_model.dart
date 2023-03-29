import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sample/models/result.dart';
import 'package:flutter_sample/models/todo.dart';
import 'package:flutter_sample/repository/result_repository.dart';
import 'package:flutter_sample/repository/todo_repository.dart';
import 'package:flutter_sample/ui/edit/edit_screen_state.dart';
import 'package:uuid/uuid.dart';

final editScreenModelProvider =
    StateNotifierProvider<EditScreenModel, EditScreenState>(
        (ref) => EditScreenModel(ref.watch(todoRepositoryProvider)));

class EditScreenModel extends StateNotifier<EditScreenState> {
  /// constructor
  EditScreenModel(this.todoRepository) : super(const EditScreenState());

  /// todoRepository
  final Repository<Todo> todoRepository;

  /// [todo]を保存する
  /// primary keyがなければsave, あればupdateをする
  Future<Result<String>> save(EditScreenState state) async {
    const uuid = Uuid();
    if (state.id == null) {
      final saveData = Todo(
          id: uuid.v4(),
          priority: state.priority,
          text: state.text,
          createdAt: state.createdAt,
          updatedAt: state.updatedAt);

      final result = await todoRepository.save(saveData);
      return result.when(
        success: (data) {
          return Result.success(data: saveData.id!);
        },
        failure: (error) {
          return Result.failure(error: error);
        },
      );
    } else {
      final saveData = Todo(
          id: state.id,
          priority: state.priority,
          text: state.text,
          createdAt: state.createdAt,
          updatedAt: state.updatedAt);
      final result = await todoRepository.update(saveData);
      return result.when(
        success: (data) {
          return Result.success(data: saveData.id!);
        },
        failure: (error) {
          return Result.failure(error: error);
        },
      );
    }
  }
}

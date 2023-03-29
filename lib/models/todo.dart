import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
@JsonSerializable()
class Todo with _$Todo {
  const factory Todo({
    /// id
    String? id,

    /// Todoの優先度
    @Default(0) int priority,

    /// Todoの内容
    @Default('') String? text,

    /// 作成日 UnixTime
    @JsonKey(name: 'created_at') @Default('') String createdAt,

    /// 更新日 UnixTime
    @JsonKey(name: 'updated_at') @Default('') String updatedAt,
  }) = _Todo;

  const Todo._();

  /// JsonからTodoを生成する
  @override
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  static String get tableName => 'todos';
}

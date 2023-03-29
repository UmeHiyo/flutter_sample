import 'package:flutter_sample/models/todo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_screen_state.freezed.dart';

@freezed
class ListScreenState with _$ListScreenState {
  const factory ListScreenState({
    /// Todoのリスト
    @Default(<Todo>[]) List<Todo> todos,
  }) = _ListScreenState;
}

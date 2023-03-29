import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_screen_state.freezed.dart';

@freezed
class EditScreenState with _$EditScreenState {
  const factory EditScreenState({
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
  }) = _EditScreenState;
}

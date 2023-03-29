// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditScreenState {
  /// id
  String? get id => throw _privateConstructorUsedError;

  /// Todoの優先度
  int get priority => throw _privateConstructorUsedError;

  /// Todoの内容
  String? get text => throw _privateConstructorUsedError;

  /// 作成日 UnixTime
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  /// 更新日 UnixTime
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditScreenStateCopyWith<EditScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditScreenStateCopyWith<$Res> {
  factory $EditScreenStateCopyWith(
          EditScreenState value, $Res Function(EditScreenState) then) =
      _$EditScreenStateCopyWithImpl<$Res, EditScreenState>;
  @useResult
  $Res call(
      {String? id,
      int priority,
      String? text,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class _$EditScreenStateCopyWithImpl<$Res, $Val extends EditScreenState>
    implements $EditScreenStateCopyWith<$Res> {
  _$EditScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? priority = null,
    Object? text = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EditScreenStateCopyWith<$Res>
    implements $EditScreenStateCopyWith<$Res> {
  factory _$$_EditScreenStateCopyWith(
          _$_EditScreenState value, $Res Function(_$_EditScreenState) then) =
      __$$_EditScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int priority,
      String? text,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt});
}

/// @nodoc
class __$$_EditScreenStateCopyWithImpl<$Res>
    extends _$EditScreenStateCopyWithImpl<$Res, _$_EditScreenState>
    implements _$$_EditScreenStateCopyWith<$Res> {
  __$$_EditScreenStateCopyWithImpl(
      _$_EditScreenState _value, $Res Function(_$_EditScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? priority = null,
    Object? text = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$_EditScreenState(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditScreenState implements _EditScreenState {
  const _$_EditScreenState(
      {this.id,
      this.priority = 0,
      this.text = '',
      @JsonKey(name: 'created_at') this.createdAt = '',
      @JsonKey(name: 'updated_at') this.updatedAt = ''});

  /// id
  @override
  final String? id;

  /// Todoの優先度
  @override
  @JsonKey()
  final int priority;

  /// Todoの内容
  @override
  @JsonKey()
  final String? text;

  /// 作成日 UnixTime
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  /// 更新日 UnixTime
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;

  @override
  String toString() {
    return 'EditScreenState(id: $id, priority: $priority, text: $text, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditScreenState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, priority, text, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditScreenStateCopyWith<_$_EditScreenState> get copyWith =>
      __$$_EditScreenStateCopyWithImpl<_$_EditScreenState>(this, _$identity);
}

abstract class _EditScreenState implements EditScreenState {
  const factory _EditScreenState(
          {final String? id,
          final int priority,
          final String? text,
          @JsonKey(name: 'created_at') final String createdAt,
          @JsonKey(name: 'updated_at') final String updatedAt}) =
      _$_EditScreenState;

  @override

  /// id
  String? get id;
  @override

  /// Todoの優先度
  int get priority;
  @override

  /// Todoの内容
  String? get text;
  @override

  /// 作成日 UnixTime
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override

  /// 更新日 UnixTime
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_EditScreenStateCopyWith<_$_EditScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

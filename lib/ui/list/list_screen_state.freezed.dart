// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ListScreenState {
  /// Todoのリスト
  List<Todo> get todos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ListScreenStateCopyWith<ListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListScreenStateCopyWith<$Res> {
  factory $ListScreenStateCopyWith(
          ListScreenState value, $Res Function(ListScreenState) then) =
      _$ListScreenStateCopyWithImpl<$Res, ListScreenState>;
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class _$ListScreenStateCopyWithImpl<$Res, $Val extends ListScreenState>
    implements $ListScreenStateCopyWith<$Res> {
  _$ListScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListScreenStateCopyWith<$Res>
    implements $ListScreenStateCopyWith<$Res> {
  factory _$$_ListScreenStateCopyWith(
          _$_ListScreenState value, $Res Function(_$_ListScreenState) then) =
      __$$_ListScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Todo> todos});
}

/// @nodoc
class __$$_ListScreenStateCopyWithImpl<$Res>
    extends _$ListScreenStateCopyWithImpl<$Res, _$_ListScreenState>
    implements _$$_ListScreenStateCopyWith<$Res> {
  __$$_ListScreenStateCopyWithImpl(
      _$_ListScreenState _value, $Res Function(_$_ListScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todos = null,
  }) {
    return _then(_$_ListScreenState(
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$_ListScreenState implements _ListScreenState {
  const _$_ListScreenState({final List<Todo> todos = const <Todo>[]})
      : _todos = todos;

  /// Todoのリスト
  final List<Todo> _todos;

  /// Todoのリスト
  @override
  @JsonKey()
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'ListScreenState(todos: $todos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListScreenState &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListScreenStateCopyWith<_$_ListScreenState> get copyWith =>
      __$$_ListScreenStateCopyWithImpl<_$_ListScreenState>(this, _$identity);
}

abstract class _ListScreenState implements ListScreenState {
  const factory _ListScreenState({final List<Todo> todos}) = _$_ListScreenState;

  @override

  /// Todoのリスト
  List<Todo> get todos;
  @override
  @JsonKey(ignore: true)
  _$$_ListScreenStateCopyWith<_$_ListScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

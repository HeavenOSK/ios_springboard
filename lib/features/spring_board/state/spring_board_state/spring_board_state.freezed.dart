// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spring_board_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SpringBoardStateTearOff {
  const _$SpringBoardStateTearOff();

  _SpringBoardState call(
      {SpringBoardMode mode = SpringBoardMode.waiting, int? focusId}) {
    return _SpringBoardState(
      mode: mode,
      focusId: focusId,
    );
  }
}

/// @nodoc
const $SpringBoardState = _$SpringBoardStateTearOff();

/// @nodoc
mixin _$SpringBoardState {
  SpringBoardMode get mode => throw _privateConstructorUsedError;
  int? get focusId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpringBoardStateCopyWith<SpringBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpringBoardStateCopyWith<$Res> {
  factory $SpringBoardStateCopyWith(
          SpringBoardState value, $Res Function(SpringBoardState) then) =
      _$SpringBoardStateCopyWithImpl<$Res>;
  $Res call({SpringBoardMode mode, int? focusId});
}

/// @nodoc
class _$SpringBoardStateCopyWithImpl<$Res>
    implements $SpringBoardStateCopyWith<$Res> {
  _$SpringBoardStateCopyWithImpl(this._value, this._then);

  final SpringBoardState _value;
  // ignore: unused_field
  final $Res Function(SpringBoardState) _then;

  @override
  $Res call({
    Object? mode = freezed,
    Object? focusId = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SpringBoardMode,
      focusId: focusId == freezed
          ? _value.focusId
          : focusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$SpringBoardStateCopyWith<$Res>
    implements $SpringBoardStateCopyWith<$Res> {
  factory _$SpringBoardStateCopyWith(
          _SpringBoardState value, $Res Function(_SpringBoardState) then) =
      __$SpringBoardStateCopyWithImpl<$Res>;
  @override
  $Res call({SpringBoardMode mode, int? focusId});
}

/// @nodoc
class __$SpringBoardStateCopyWithImpl<$Res>
    extends _$SpringBoardStateCopyWithImpl<$Res>
    implements _$SpringBoardStateCopyWith<$Res> {
  __$SpringBoardStateCopyWithImpl(
      _SpringBoardState _value, $Res Function(_SpringBoardState) _then)
      : super(_value, (v) => _then(v as _SpringBoardState));

  @override
  _SpringBoardState get _value => super._value as _SpringBoardState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? focusId = freezed,
  }) {
    return _then(_SpringBoardState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as SpringBoardMode,
      focusId: focusId == freezed
          ? _value.focusId
          : focusId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_SpringBoardState implements _SpringBoardState {
  const _$_SpringBoardState(
      {this.mode = SpringBoardMode.waiting, this.focusId});

  @JsonKey(defaultValue: SpringBoardMode.waiting)
  @override
  final SpringBoardMode mode;
  @override
  final int? focusId;

  @override
  String toString() {
    return 'SpringBoardState(mode: $mode, focusId: $focusId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpringBoardState &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.focusId, focusId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(focusId));

  @JsonKey(ignore: true)
  @override
  _$SpringBoardStateCopyWith<_SpringBoardState> get copyWith =>
      __$SpringBoardStateCopyWithImpl<_SpringBoardState>(this, _$identity);
}

abstract class _SpringBoardState implements SpringBoardState {
  const factory _SpringBoardState({SpringBoardMode mode, int? focusId}) =
      _$_SpringBoardState;

  @override
  SpringBoardMode get mode;
  @override
  int? get focusId;
  @override
  @JsonKey(ignore: true)
  _$SpringBoardStateCopyWith<_SpringBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

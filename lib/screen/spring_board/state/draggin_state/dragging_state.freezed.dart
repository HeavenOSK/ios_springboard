// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dragging_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DraggingStateTearOff {
  const _$DraggingStateTearOff();

  _DraggingState call({required int id}) {
    return _DraggingState(
      id: id,
    );
  }
}

/// @nodoc
const $DraggingState = _$DraggingStateTearOff();

/// @nodoc
mixin _$DraggingState {
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DraggingStateCopyWith<DraggingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraggingStateCopyWith<$Res> {
  factory $DraggingStateCopyWith(
          DraggingState value, $Res Function(DraggingState) then) =
      _$DraggingStateCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$DraggingStateCopyWithImpl<$Res>
    implements $DraggingStateCopyWith<$Res> {
  _$DraggingStateCopyWithImpl(this._value, this._then);

  final DraggingState _value;
  // ignore: unused_field
  final $Res Function(DraggingState) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DraggingStateCopyWith<$Res>
    implements $DraggingStateCopyWith<$Res> {
  factory _$DraggingStateCopyWith(
          _DraggingState value, $Res Function(_DraggingState) then) =
      __$DraggingStateCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$DraggingStateCopyWithImpl<$Res>
    extends _$DraggingStateCopyWithImpl<$Res>
    implements _$DraggingStateCopyWith<$Res> {
  __$DraggingStateCopyWithImpl(
      _DraggingState _value, $Res Function(_DraggingState) _then)
      : super(_value, (v) => _then(v as _DraggingState));

  @override
  _DraggingState get _value => super._value as _DraggingState;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_DraggingState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DraggingState implements _DraggingState {
  const _$_DraggingState({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'DraggingState(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DraggingState &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$DraggingStateCopyWith<_DraggingState> get copyWith =>
      __$DraggingStateCopyWithImpl<_DraggingState>(this, _$identity);
}

abstract class _DraggingState implements DraggingState {
  const factory _DraggingState({required int id}) = _$_DraggingState;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$DraggingStateCopyWith<_DraggingState> get copyWith =>
      throw _privateConstructorUsedError;
}

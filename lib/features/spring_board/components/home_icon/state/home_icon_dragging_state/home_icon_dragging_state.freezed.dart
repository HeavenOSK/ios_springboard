// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_icon_dragging_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeIconDraggingStateTearOff {
  const _$HomeIconDraggingStateTearOff();

  _HomeIconDraggingState call(
      {required int id,
      required Offset globalPosition,
      required Offset localPosition}) {
    return _HomeIconDraggingState(
      id: id,
      globalPosition: globalPosition,
      localPosition: localPosition,
    );
  }
}

/// @nodoc
const $HomeIconDraggingState = _$HomeIconDraggingStateTearOff();

/// @nodoc
mixin _$HomeIconDraggingState {
  int get id => throw _privateConstructorUsedError;
  Offset get globalPosition => throw _privateConstructorUsedError;
  Offset get localPosition => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeIconDraggingStateCopyWith<HomeIconDraggingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeIconDraggingStateCopyWith<$Res> {
  factory $HomeIconDraggingStateCopyWith(HomeIconDraggingState value,
          $Res Function(HomeIconDraggingState) then) =
      _$HomeIconDraggingStateCopyWithImpl<$Res>;
  $Res call({int id, Offset globalPosition, Offset localPosition});
}

/// @nodoc
class _$HomeIconDraggingStateCopyWithImpl<$Res>
    implements $HomeIconDraggingStateCopyWith<$Res> {
  _$HomeIconDraggingStateCopyWithImpl(this._value, this._then);

  final HomeIconDraggingState _value;
  // ignore: unused_field
  final $Res Function(HomeIconDraggingState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? globalPosition = freezed,
    Object? localPosition = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      globalPosition: globalPosition == freezed
          ? _value.globalPosition
          : globalPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
      localPosition: localPosition == freezed
          ? _value.localPosition
          : localPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc
abstract class _$HomeIconDraggingStateCopyWith<$Res>
    implements $HomeIconDraggingStateCopyWith<$Res> {
  factory _$HomeIconDraggingStateCopyWith(_HomeIconDraggingState value,
          $Res Function(_HomeIconDraggingState) then) =
      __$HomeIconDraggingStateCopyWithImpl<$Res>;
  @override
  $Res call({int id, Offset globalPosition, Offset localPosition});
}

/// @nodoc
class __$HomeIconDraggingStateCopyWithImpl<$Res>
    extends _$HomeIconDraggingStateCopyWithImpl<$Res>
    implements _$HomeIconDraggingStateCopyWith<$Res> {
  __$HomeIconDraggingStateCopyWithImpl(_HomeIconDraggingState _value,
      $Res Function(_HomeIconDraggingState) _then)
      : super(_value, (v) => _then(v as _HomeIconDraggingState));

  @override
  _HomeIconDraggingState get _value => super._value as _HomeIconDraggingState;

  @override
  $Res call({
    Object? id = freezed,
    Object? globalPosition = freezed,
    Object? localPosition = freezed,
  }) {
    return _then(_HomeIconDraggingState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      globalPosition: globalPosition == freezed
          ? _value.globalPosition
          : globalPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
      localPosition: localPosition == freezed
          ? _value.localPosition
          : localPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_HomeIconDraggingState implements _HomeIconDraggingState {
  const _$_HomeIconDraggingState(
      {required this.id,
      required this.globalPosition,
      required this.localPosition});

  @override
  final int id;
  @override
  final Offset globalPosition;
  @override
  final Offset localPosition;

  @override
  String toString() {
    return 'HomeIconDraggingState(id: $id, globalPosition: $globalPosition, localPosition: $localPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeIconDraggingState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.globalPosition, globalPosition) &&
            const DeepCollectionEquality()
                .equals(other.localPosition, localPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(globalPosition),
      const DeepCollectionEquality().hash(localPosition));

  @JsonKey(ignore: true)
  @override
  _$HomeIconDraggingStateCopyWith<_HomeIconDraggingState> get copyWith =>
      __$HomeIconDraggingStateCopyWithImpl<_HomeIconDraggingState>(
          this, _$identity);
}

abstract class _HomeIconDraggingState implements HomeIconDraggingState {
  const factory _HomeIconDraggingState(
      {required int id,
      required Offset globalPosition,
      required Offset localPosition}) = _$_HomeIconDraggingState;

  @override
  int get id;
  @override
  Offset get globalPosition;
  @override
  Offset get localPosition;
  @override
  @JsonKey(ignore: true)
  _$HomeIconDraggingStateCopyWith<_HomeIconDraggingState> get copyWith =>
      throw _privateConstructorUsedError;
}

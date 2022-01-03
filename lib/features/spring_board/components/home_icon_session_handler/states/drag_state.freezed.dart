// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'drag_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DragStateTearOff {
  const _$DragStateTearOff();

  _DragState call(
      {required int id,
      Offset? globalPosition,
      Offset? localPosition,
      bool isDragging = false}) {
    return _DragState(
      id: id,
      globalPosition: globalPosition,
      localPosition: localPosition,
      isDragging: isDragging,
    );
  }
}

/// @nodoc
const $DragState = _$DragStateTearOff();

/// @nodoc
mixin _$DragState {
  int get id => throw _privateConstructorUsedError;
  Offset? get globalPosition => throw _privateConstructorUsedError;
  Offset? get localPosition => throw _privateConstructorUsedError;
  bool get isDragging => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DragStateCopyWith<DragState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DragStateCopyWith<$Res> {
  factory $DragStateCopyWith(DragState value, $Res Function(DragState) then) =
      _$DragStateCopyWithImpl<$Res>;
  $Res call(
      {int id, Offset? globalPosition, Offset? localPosition, bool isDragging});
}

/// @nodoc
class _$DragStateCopyWithImpl<$Res> implements $DragStateCopyWith<$Res> {
  _$DragStateCopyWithImpl(this._value, this._then);

  final DragState _value;
  // ignore: unused_field
  final $Res Function(DragState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? globalPosition = freezed,
    Object? localPosition = freezed,
    Object? isDragging = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      globalPosition: globalPosition == freezed
          ? _value.globalPosition
          : globalPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
      localPosition: localPosition == freezed
          ? _value.localPosition
          : localPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
      isDragging: isDragging == freezed
          ? _value.isDragging
          : isDragging // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$DragStateCopyWith<$Res> implements $DragStateCopyWith<$Res> {
  factory _$DragStateCopyWith(
          _DragState value, $Res Function(_DragState) then) =
      __$DragStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id, Offset? globalPosition, Offset? localPosition, bool isDragging});
}

/// @nodoc
class __$DragStateCopyWithImpl<$Res> extends _$DragStateCopyWithImpl<$Res>
    implements _$DragStateCopyWith<$Res> {
  __$DragStateCopyWithImpl(_DragState _value, $Res Function(_DragState) _then)
      : super(_value, (v) => _then(v as _DragState));

  @override
  _DragState get _value => super._value as _DragState;

  @override
  $Res call({
    Object? id = freezed,
    Object? globalPosition = freezed,
    Object? localPosition = freezed,
    Object? isDragging = freezed,
  }) {
    return _then(_DragState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      globalPosition: globalPosition == freezed
          ? _value.globalPosition
          : globalPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
      localPosition: localPosition == freezed
          ? _value.localPosition
          : localPosition // ignore: cast_nullable_to_non_nullable
              as Offset?,
      isDragging: isDragging == freezed
          ? _value.isDragging
          : isDragging // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_DragState implements _DragState {
  const _$_DragState(
      {required this.id,
      this.globalPosition,
      this.localPosition,
      this.isDragging = false});

  @override
  final int id;
  @override
  final Offset? globalPosition;
  @override
  final Offset? localPosition;
  @JsonKey(defaultValue: false)
  @override
  final bool isDragging;

  @override
  String toString() {
    return 'DragState(id: $id, globalPosition: $globalPosition, localPosition: $localPosition, isDragging: $isDragging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DragState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.globalPosition, globalPosition) &&
            const DeepCollectionEquality()
                .equals(other.localPosition, localPosition) &&
            const DeepCollectionEquality()
                .equals(other.isDragging, isDragging));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(globalPosition),
      const DeepCollectionEquality().hash(localPosition),
      const DeepCollectionEquality().hash(isDragging));

  @JsonKey(ignore: true)
  @override
  _$DragStateCopyWith<_DragState> get copyWith =>
      __$DragStateCopyWithImpl<_DragState>(this, _$identity);
}

abstract class _DragState implements DragState {
  const factory _DragState(
      {required int id,
      Offset? globalPosition,
      Offset? localPosition,
      bool isDragging}) = _$_DragState;

  @override
  int get id;
  @override
  Offset? get globalPosition;
  @override
  Offset? get localPosition;
  @override
  bool get isDragging;
  @override
  @JsonKey(ignore: true)
  _$DragStateCopyWith<_DragState> get copyWith =>
      throw _privateConstructorUsedError;
}

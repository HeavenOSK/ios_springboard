// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'computed_slot_position.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ComputedSlotPositionTearOff {
  const _$ComputedSlotPositionTearOff();

  _ComputedSlotPosition call({required Offset position}) {
    return _ComputedSlotPosition(
      position: position,
    );
  }
}

/// @nodoc
const $ComputedSlotPosition = _$ComputedSlotPositionTearOff();

/// @nodoc
mixin _$ComputedSlotPosition {
  Offset get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ComputedSlotPositionCopyWith<ComputedSlotPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComputedSlotPositionCopyWith<$Res> {
  factory $ComputedSlotPositionCopyWith(ComputedSlotPosition value,
          $Res Function(ComputedSlotPosition) then) =
      _$ComputedSlotPositionCopyWithImpl<$Res>;
  $Res call({Offset position});
}

/// @nodoc
class _$ComputedSlotPositionCopyWithImpl<$Res>
    implements $ComputedSlotPositionCopyWith<$Res> {
  _$ComputedSlotPositionCopyWithImpl(this._value, this._then);

  final ComputedSlotPosition _value;
  // ignore: unused_field
  final $Res Function(ComputedSlotPosition) _then;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc
abstract class _$ComputedSlotPositionCopyWith<$Res>
    implements $ComputedSlotPositionCopyWith<$Res> {
  factory _$ComputedSlotPositionCopyWith(_ComputedSlotPosition value,
          $Res Function(_ComputedSlotPosition) then) =
      __$ComputedSlotPositionCopyWithImpl<$Res>;
  @override
  $Res call({Offset position});
}

/// @nodoc
class __$ComputedSlotPositionCopyWithImpl<$Res>
    extends _$ComputedSlotPositionCopyWithImpl<$Res>
    implements _$ComputedSlotPositionCopyWith<$Res> {
  __$ComputedSlotPositionCopyWithImpl(
      _ComputedSlotPosition _value, $Res Function(_ComputedSlotPosition) _then)
      : super(_value, (v) => _then(v as _ComputedSlotPosition));

  @override
  _ComputedSlotPosition get _value => super._value as _ComputedSlotPosition;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_ComputedSlotPosition(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_ComputedSlotPosition implements _ComputedSlotPosition {
  const _$_ComputedSlotPosition({required this.position});

  @override
  final Offset position;

  @override
  String toString() {
    return 'ComputedSlotPosition(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ComputedSlotPosition &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$ComputedSlotPositionCopyWith<_ComputedSlotPosition> get copyWith =>
      __$ComputedSlotPositionCopyWithImpl<_ComputedSlotPosition>(
          this, _$identity);
}

abstract class _ComputedSlotPosition implements ComputedSlotPosition {
  const factory _ComputedSlotPosition({required Offset position}) =
      _$_ComputedSlotPosition;

  @override
  Offset get position;
  @override
  @JsonKey(ignore: true)
  _$ComputedSlotPositionCopyWith<_ComputedSlotPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

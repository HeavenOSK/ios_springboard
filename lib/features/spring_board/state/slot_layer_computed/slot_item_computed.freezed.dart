// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot_item_computed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SlotItemComputedTearOff {
  const _$SlotItemComputedTearOff();

  _SlotItemComputed call({required Offset position}) {
    return _SlotItemComputed(
      position: position,
    );
  }
}

/// @nodoc
const $SlotItemComputed = _$SlotItemComputedTearOff();

/// @nodoc
mixin _$SlotItemComputed {
  Offset get position => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotItemComputedCopyWith<SlotItemComputed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotItemComputedCopyWith<$Res> {
  factory $SlotItemComputedCopyWith(
          SlotItemComputed value, $Res Function(SlotItemComputed) then) =
      _$SlotItemComputedCopyWithImpl<$Res>;
  $Res call({Offset position});
}

/// @nodoc
class _$SlotItemComputedCopyWithImpl<$Res>
    implements $SlotItemComputedCopyWith<$Res> {
  _$SlotItemComputedCopyWithImpl(this._value, this._then);

  final SlotItemComputed _value;
  // ignore: unused_field
  final $Res Function(SlotItemComputed) _then;

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
abstract class _$SlotItemComputedCopyWith<$Res>
    implements $SlotItemComputedCopyWith<$Res> {
  factory _$SlotItemComputedCopyWith(
          _SlotItemComputed value, $Res Function(_SlotItemComputed) then) =
      __$SlotItemComputedCopyWithImpl<$Res>;
  @override
  $Res call({Offset position});
}

/// @nodoc
class __$SlotItemComputedCopyWithImpl<$Res>
    extends _$SlotItemComputedCopyWithImpl<$Res>
    implements _$SlotItemComputedCopyWith<$Res> {
  __$SlotItemComputedCopyWithImpl(
      _SlotItemComputed _value, $Res Function(_SlotItemComputed) _then)
      : super(_value, (v) => _then(v as _SlotItemComputed));

  @override
  _SlotItemComputed get _value => super._value as _SlotItemComputed;

  @override
  $Res call({
    Object? position = freezed,
  }) {
    return _then(_SlotItemComputed(
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_SlotItemComputed implements _SlotItemComputed {
  const _$_SlotItemComputed({required this.position});

  @override
  final Offset position;

  @override
  String toString() {
    return 'SlotItemComputed(position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SlotItemComputed &&
            const DeepCollectionEquality().equals(other.position, position));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(position));

  @JsonKey(ignore: true)
  @override
  _$SlotItemComputedCopyWith<_SlotItemComputed> get copyWith =>
      __$SlotItemComputedCopyWithImpl<_SlotItemComputed>(this, _$identity);
}

abstract class _SlotItemComputed implements SlotItemComputed {
  const factory _SlotItemComputed({required Offset position}) =
      _$_SlotItemComputed;

  @override
  Offset get position;
  @override
  @JsonKey(ignore: true)
  _$SlotItemComputedCopyWith<_SlotItemComputed> get copyWith =>
      throw _privateConstructorUsedError;
}

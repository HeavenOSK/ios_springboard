// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot_layer_computed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SlotLayerComputedTearOff {
  const _$SlotLayerComputedTearOff();

  _SlotLayerComputed call(
      {required Size slotSize, required List<ComputedSlotPosition> positions}) {
    return _SlotLayerComputed(
      slotSize: slotSize,
      positions: positions,
    );
  }
}

/// @nodoc
const $SlotLayerComputed = _$SlotLayerComputedTearOff();

/// @nodoc
mixin _$SlotLayerComputed {
  Size get slotSize => throw _privateConstructorUsedError;
  List<ComputedSlotPosition> get positions =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotLayerComputedCopyWith<SlotLayerComputed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotLayerComputedCopyWith<$Res> {
  factory $SlotLayerComputedCopyWith(
          SlotLayerComputed value, $Res Function(SlotLayerComputed) then) =
      _$SlotLayerComputedCopyWithImpl<$Res>;
  $Res call({Size slotSize, List<ComputedSlotPosition> positions});
}

/// @nodoc
class _$SlotLayerComputedCopyWithImpl<$Res>
    implements $SlotLayerComputedCopyWith<$Res> {
  _$SlotLayerComputedCopyWithImpl(this._value, this._then);

  final SlotLayerComputed _value;
  // ignore: unused_field
  final $Res Function(SlotLayerComputed) _then;

  @override
  $Res call({
    Object? slotSize = freezed,
    Object? positions = freezed,
  }) {
    return _then(_value.copyWith(
      slotSize: slotSize == freezed
          ? _value.slotSize
          : slotSize // ignore: cast_nullable_to_non_nullable
              as Size,
      positions: positions == freezed
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<ComputedSlotPosition>,
    ));
  }
}

/// @nodoc
abstract class _$SlotLayerComputedCopyWith<$Res>
    implements $SlotLayerComputedCopyWith<$Res> {
  factory _$SlotLayerComputedCopyWith(
          _SlotLayerComputed value, $Res Function(_SlotLayerComputed) then) =
      __$SlotLayerComputedCopyWithImpl<$Res>;
  @override
  $Res call({Size slotSize, List<ComputedSlotPosition> positions});
}

/// @nodoc
class __$SlotLayerComputedCopyWithImpl<$Res>
    extends _$SlotLayerComputedCopyWithImpl<$Res>
    implements _$SlotLayerComputedCopyWith<$Res> {
  __$SlotLayerComputedCopyWithImpl(
      _SlotLayerComputed _value, $Res Function(_SlotLayerComputed) _then)
      : super(_value, (v) => _then(v as _SlotLayerComputed));

  @override
  _SlotLayerComputed get _value => super._value as _SlotLayerComputed;

  @override
  $Res call({
    Object? slotSize = freezed,
    Object? positions = freezed,
  }) {
    return _then(_SlotLayerComputed(
      slotSize: slotSize == freezed
          ? _value.slotSize
          : slotSize // ignore: cast_nullable_to_non_nullable
              as Size,
      positions: positions == freezed
          ? _value.positions
          : positions // ignore: cast_nullable_to_non_nullable
              as List<ComputedSlotPosition>,
    ));
  }
}

/// @nodoc

class _$_SlotLayerComputed implements _SlotLayerComputed {
  const _$_SlotLayerComputed({required this.slotSize, required this.positions});

  @override
  final Size slotSize;
  @override
  final List<ComputedSlotPosition> positions;

  @override
  String toString() {
    return 'SlotLayerComputed(slotSize: $slotSize, positions: $positions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SlotLayerComputed &&
            const DeepCollectionEquality().equals(other.slotSize, slotSize) &&
            const DeepCollectionEquality().equals(other.positions, positions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(slotSize),
      const DeepCollectionEquality().hash(positions));

  @JsonKey(ignore: true)
  @override
  _$SlotLayerComputedCopyWith<_SlotLayerComputed> get copyWith =>
      __$SlotLayerComputedCopyWithImpl<_SlotLayerComputed>(this, _$identity);
}

abstract class _SlotLayerComputed implements SlotLayerComputed {
  const factory _SlotLayerComputed(
      {required Size slotSize,
      required List<ComputedSlotPosition> positions}) = _$_SlotLayerComputed;

  @override
  Size get slotSize;
  @override
  List<ComputedSlotPosition> get positions;
  @override
  @JsonKey(ignore: true)
  _$SlotLayerComputedCopyWith<_SlotLayerComputed> get copyWith =>
      throw _privateConstructorUsedError;
}

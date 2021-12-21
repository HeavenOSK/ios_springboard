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
      {required Size slotSize,
      required List<SlotItemComputed> slotItems,
      required List<Rect> dragTargets}) {
    return _SlotLayerComputed(
      slotSize: slotSize,
      slotItems: slotItems,
      dragTargets: dragTargets,
    );
  }
}

/// @nodoc
const $SlotLayerComputed = _$SlotLayerComputedTearOff();

/// @nodoc
mixin _$SlotLayerComputed {
  Size get slotSize => throw _privateConstructorUsedError;
  List<SlotItemComputed> get slotItems => throw _privateConstructorUsedError;
  List<Rect> get dragTargets => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotLayerComputedCopyWith<SlotLayerComputed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotLayerComputedCopyWith<$Res> {
  factory $SlotLayerComputedCopyWith(
          SlotLayerComputed value, $Res Function(SlotLayerComputed) then) =
      _$SlotLayerComputedCopyWithImpl<$Res>;
  $Res call(
      {Size slotSize,
      List<SlotItemComputed> slotItems,
      List<Rect> dragTargets});
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
    Object? slotItems = freezed,
    Object? dragTargets = freezed,
  }) {
    return _then(_value.copyWith(
      slotSize: slotSize == freezed
          ? _value.slotSize
          : slotSize // ignore: cast_nullable_to_non_nullable
              as Size,
      slotItems: slotItems == freezed
          ? _value.slotItems
          : slotItems // ignore: cast_nullable_to_non_nullable
              as List<SlotItemComputed>,
      dragTargets: dragTargets == freezed
          ? _value.dragTargets
          : dragTargets // ignore: cast_nullable_to_non_nullable
              as List<Rect>,
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
  $Res call(
      {Size slotSize,
      List<SlotItemComputed> slotItems,
      List<Rect> dragTargets});
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
    Object? slotItems = freezed,
    Object? dragTargets = freezed,
  }) {
    return _then(_SlotLayerComputed(
      slotSize: slotSize == freezed
          ? _value.slotSize
          : slotSize // ignore: cast_nullable_to_non_nullable
              as Size,
      slotItems: slotItems == freezed
          ? _value.slotItems
          : slotItems // ignore: cast_nullable_to_non_nullable
              as List<SlotItemComputed>,
      dragTargets: dragTargets == freezed
          ? _value.dragTargets
          : dragTargets // ignore: cast_nullable_to_non_nullable
              as List<Rect>,
    ));
  }
}

/// @nodoc

class _$_SlotLayerComputed implements _SlotLayerComputed {
  const _$_SlotLayerComputed(
      {required this.slotSize,
      required this.slotItems,
      required this.dragTargets});

  @override
  final Size slotSize;
  @override
  final List<SlotItemComputed> slotItems;
  @override
  final List<Rect> dragTargets;

  @override
  String toString() {
    return 'SlotLayerComputed(slotSize: $slotSize, slotItems: $slotItems, dragTargets: $dragTargets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SlotLayerComputed &&
            const DeepCollectionEquality().equals(other.slotSize, slotSize) &&
            const DeepCollectionEquality().equals(other.slotItems, slotItems) &&
            const DeepCollectionEquality()
                .equals(other.dragTargets, dragTargets));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(slotSize),
      const DeepCollectionEquality().hash(slotItems),
      const DeepCollectionEquality().hash(dragTargets));

  @JsonKey(ignore: true)
  @override
  _$SlotLayerComputedCopyWith<_SlotLayerComputed> get copyWith =>
      __$SlotLayerComputedCopyWithImpl<_SlotLayerComputed>(this, _$identity);
}

abstract class _SlotLayerComputed implements SlotLayerComputed {
  const factory _SlotLayerComputed(
      {required Size slotSize,
      required List<SlotItemComputed> slotItems,
      required List<Rect> dragTargets}) = _$_SlotLayerComputed;

  @override
  Size get slotSize;
  @override
  List<SlotItemComputed> get slotItems;
  @override
  List<Rect> get dragTargets;
  @override
  @JsonKey(ignore: true)
  _$SlotLayerComputedCopyWith<_SlotLayerComputed> get copyWith =>
      throw _privateConstructorUsedError;
}

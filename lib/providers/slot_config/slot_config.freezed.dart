// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'slot_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SlotConfigTearOff {
  const _$SlotConfigTearOff();

  _SlotConfig call({int rowCount = 4, int columnCount = 6}) {
    return _SlotConfig(
      rowCount: rowCount,
      columnCount: columnCount,
    );
  }
}

/// @nodoc
const $SlotConfig = _$SlotConfigTearOff();

/// @nodoc
mixin _$SlotConfig {
  int get rowCount => throw _privateConstructorUsedError;
  int get columnCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlotConfigCopyWith<SlotConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlotConfigCopyWith<$Res> {
  factory $SlotConfigCopyWith(
          SlotConfig value, $Res Function(SlotConfig) then) =
      _$SlotConfigCopyWithImpl<$Res>;
  $Res call({int rowCount, int columnCount});
}

/// @nodoc
class _$SlotConfigCopyWithImpl<$Res> implements $SlotConfigCopyWith<$Res> {
  _$SlotConfigCopyWithImpl(this._value, this._then);

  final SlotConfig _value;
  // ignore: unused_field
  final $Res Function(SlotConfig) _then;

  @override
  $Res call({
    Object? rowCount = freezed,
    Object? columnCount = freezed,
  }) {
    return _then(_value.copyWith(
      rowCount: rowCount == freezed
          ? _value.rowCount
          : rowCount // ignore: cast_nullable_to_non_nullable
              as int,
      columnCount: columnCount == freezed
          ? _value.columnCount
          : columnCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$SlotConfigCopyWith<$Res> implements $SlotConfigCopyWith<$Res> {
  factory _$SlotConfigCopyWith(
          _SlotConfig value, $Res Function(_SlotConfig) then) =
      __$SlotConfigCopyWithImpl<$Res>;
  @override
  $Res call({int rowCount, int columnCount});
}

/// @nodoc
class __$SlotConfigCopyWithImpl<$Res> extends _$SlotConfigCopyWithImpl<$Res>
    implements _$SlotConfigCopyWith<$Res> {
  __$SlotConfigCopyWithImpl(
      _SlotConfig _value, $Res Function(_SlotConfig) _then)
      : super(_value, (v) => _then(v as _SlotConfig));

  @override
  _SlotConfig get _value => super._value as _SlotConfig;

  @override
  $Res call({
    Object? rowCount = freezed,
    Object? columnCount = freezed,
  }) {
    return _then(_SlotConfig(
      rowCount: rowCount == freezed
          ? _value.rowCount
          : rowCount // ignore: cast_nullable_to_non_nullable
              as int,
      columnCount: columnCount == freezed
          ? _value.columnCount
          : columnCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SlotConfig implements _SlotConfig {
  const _$_SlotConfig({this.rowCount = 4, this.columnCount = 6});

  @JsonKey(defaultValue: 4)
  @override
  final int rowCount;
  @JsonKey(defaultValue: 6)
  @override
  final int columnCount;

  @override
  String toString() {
    return 'SlotConfig(rowCount: $rowCount, columnCount: $columnCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SlotConfig &&
            const DeepCollectionEquality().equals(other.rowCount, rowCount) &&
            const DeepCollectionEquality()
                .equals(other.columnCount, columnCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(rowCount),
      const DeepCollectionEquality().hash(columnCount));

  @JsonKey(ignore: true)
  @override
  _$SlotConfigCopyWith<_SlotConfig> get copyWith =>
      __$SlotConfigCopyWithImpl<_SlotConfig>(this, _$identity);
}

abstract class _SlotConfig implements SlotConfig {
  const factory _SlotConfig({int rowCount, int columnCount}) = _$_SlotConfig;

  @override
  int get rowCount;
  @override
  int get columnCount;
  @override
  @JsonKey(ignore: true)
  _$SlotConfigCopyWith<_SlotConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

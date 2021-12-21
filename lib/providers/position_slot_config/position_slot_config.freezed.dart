// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'position_slot_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PositionSlotConfigTearOff {
  const _$PositionSlotConfigTearOff();

  _PositionSlotConfig call({int rowCount = 4, int columnCount = 6}) {
    return _PositionSlotConfig(
      rowCount: rowCount,
      columnCount: columnCount,
    );
  }
}

/// @nodoc
const $PositionSlotConfig = _$PositionSlotConfigTearOff();

/// @nodoc
mixin _$PositionSlotConfig {
  int get rowCount => throw _privateConstructorUsedError;
  int get columnCount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PositionSlotConfigCopyWith<PositionSlotConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositionSlotConfigCopyWith<$Res> {
  factory $PositionSlotConfigCopyWith(
          PositionSlotConfig value, $Res Function(PositionSlotConfig) then) =
      _$PositionSlotConfigCopyWithImpl<$Res>;
  $Res call({int rowCount, int columnCount});
}

/// @nodoc
class _$PositionSlotConfigCopyWithImpl<$Res>
    implements $PositionSlotConfigCopyWith<$Res> {
  _$PositionSlotConfigCopyWithImpl(this._value, this._then);

  final PositionSlotConfig _value;
  // ignore: unused_field
  final $Res Function(PositionSlotConfig) _then;

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
abstract class _$PositionSlotConfigCopyWith<$Res>
    implements $PositionSlotConfigCopyWith<$Res> {
  factory _$PositionSlotConfigCopyWith(
          _PositionSlotConfig value, $Res Function(_PositionSlotConfig) then) =
      __$PositionSlotConfigCopyWithImpl<$Res>;
  @override
  $Res call({int rowCount, int columnCount});
}

/// @nodoc
class __$PositionSlotConfigCopyWithImpl<$Res>
    extends _$PositionSlotConfigCopyWithImpl<$Res>
    implements _$PositionSlotConfigCopyWith<$Res> {
  __$PositionSlotConfigCopyWithImpl(
      _PositionSlotConfig _value, $Res Function(_PositionSlotConfig) _then)
      : super(_value, (v) => _then(v as _PositionSlotConfig));

  @override
  _PositionSlotConfig get _value => super._value as _PositionSlotConfig;

  @override
  $Res call({
    Object? rowCount = freezed,
    Object? columnCount = freezed,
  }) {
    return _then(_PositionSlotConfig(
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

class _$_PositionSlotConfig implements _PositionSlotConfig {
  const _$_PositionSlotConfig({this.rowCount = 4, this.columnCount = 6});

  @JsonKey(defaultValue: 4)
  @override
  final int rowCount;
  @JsonKey(defaultValue: 6)
  @override
  final int columnCount;

  @override
  String toString() {
    return 'PositionSlotConfig(rowCount: $rowCount, columnCount: $columnCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PositionSlotConfig &&
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
  _$PositionSlotConfigCopyWith<_PositionSlotConfig> get copyWith =>
      __$PositionSlotConfigCopyWithImpl<_PositionSlotConfig>(this, _$identity);
}

abstract class _PositionSlotConfig implements PositionSlotConfig {
  const factory _PositionSlotConfig({int rowCount, int columnCount}) =
      _$_PositionSlotConfig;

  @override
  int get rowCount;
  @override
  int get columnCount;
  @override
  @JsonKey(ignore: true)
  _$PositionSlotConfigCopyWith<_PositionSlotConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

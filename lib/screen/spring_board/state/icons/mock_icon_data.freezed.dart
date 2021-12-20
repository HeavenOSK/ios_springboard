// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mock_icon_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$MockIconDataTearOff {
  const _$MockIconDataTearOff();

  _MockIconData call({required int id, required Color color}) {
    return _MockIconData(
      id: id,
      color: color,
    );
  }
}

/// @nodoc
const $MockIconData = _$MockIconDataTearOff();

/// @nodoc
mixin _$MockIconData {
  int get id => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MockIconDataCopyWith<MockIconData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MockIconDataCopyWith<$Res> {
  factory $MockIconDataCopyWith(
          MockIconData value, $Res Function(MockIconData) then) =
      _$MockIconDataCopyWithImpl<$Res>;
  $Res call({int id, Color color});
}

/// @nodoc
class _$MockIconDataCopyWithImpl<$Res> implements $MockIconDataCopyWith<$Res> {
  _$MockIconDataCopyWithImpl(this._value, this._then);

  final MockIconData _value;
  // ignore: unused_field
  final $Res Function(MockIconData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? color = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc
abstract class _$MockIconDataCopyWith<$Res>
    implements $MockIconDataCopyWith<$Res> {
  factory _$MockIconDataCopyWith(
          _MockIconData value, $Res Function(_MockIconData) then) =
      __$MockIconDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, Color color});
}

/// @nodoc
class __$MockIconDataCopyWithImpl<$Res> extends _$MockIconDataCopyWithImpl<$Res>
    implements _$MockIconDataCopyWith<$Res> {
  __$MockIconDataCopyWithImpl(
      _MockIconData _value, $Res Function(_MockIconData) _then)
      : super(_value, (v) => _then(v as _MockIconData));

  @override
  _MockIconData get _value => super._value as _MockIconData;

  @override
  $Res call({
    Object? id = freezed,
    Object? color = freezed,
  }) {
    return _then(_MockIconData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_MockIconData extends _MockIconData {
  _$_MockIconData({required this.id, required this.color}) : super._();

  @override
  final int id;
  @override
  final Color color;

  @override
  String toString() {
    return 'MockIconData(id: $id, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MockIconData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$MockIconDataCopyWith<_MockIconData> get copyWith =>
      __$MockIconDataCopyWithImpl<_MockIconData>(this, _$identity);
}

abstract class _MockIconData extends MockIconData {
  factory _MockIconData({required int id, required Color color}) =
      _$_MockIconData;
  _MockIconData._() : super._();

  @override
  int get id;
  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$MockIconDataCopyWith<_MockIconData> get copyWith =>
      throw _privateConstructorUsedError;
}

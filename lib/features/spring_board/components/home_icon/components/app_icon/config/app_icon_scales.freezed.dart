// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_icon_scales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppIconScalesTearOff {
  const _$AppIconScalesTearOff();

  _AppIconScales call({required double rate}) {
    return _AppIconScales(
      rate: rate,
    );
  }
}

/// @nodoc
const $AppIconScales = _$AppIconScalesTearOff();

/// @nodoc
mixin _$AppIconScales {
  double get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppIconScalesCopyWith<AppIconScales> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppIconScalesCopyWith<$Res> {
  factory $AppIconScalesCopyWith(
          AppIconScales value, $Res Function(AppIconScales) then) =
      _$AppIconScalesCopyWithImpl<$Res>;
  $Res call({double rate});
}

/// @nodoc
class _$AppIconScalesCopyWithImpl<$Res>
    implements $AppIconScalesCopyWith<$Res> {
  _$AppIconScalesCopyWithImpl(this._value, this._then);

  final AppIconScales _value;
  // ignore: unused_field
  final $Res Function(AppIconScales) _then;

  @override
  $Res call({
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$AppIconScalesCopyWith<$Res>
    implements $AppIconScalesCopyWith<$Res> {
  factory _$AppIconScalesCopyWith(
          _AppIconScales value, $Res Function(_AppIconScales) then) =
      __$AppIconScalesCopyWithImpl<$Res>;
  @override
  $Res call({double rate});
}

/// @nodoc
class __$AppIconScalesCopyWithImpl<$Res>
    extends _$AppIconScalesCopyWithImpl<$Res>
    implements _$AppIconScalesCopyWith<$Res> {
  __$AppIconScalesCopyWithImpl(
      _AppIconScales _value, $Res Function(_AppIconScales) _then)
      : super(_value, (v) => _then(v as _AppIconScales));

  @override
  _AppIconScales get _value => super._value as _AppIconScales;

  @override
  $Res call({
    Object? rate = freezed,
  }) {
    return _then(_AppIconScales(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AppIconScales extends _AppIconScales {
  _$_AppIconScales({required this.rate}) : super._();

  @override
  final double rate;

  @override
  String toString() {
    return 'AppIconScales(rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppIconScales &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rate));

  @JsonKey(ignore: true)
  @override
  _$AppIconScalesCopyWith<_AppIconScales> get copyWith =>
      __$AppIconScalesCopyWithImpl<_AppIconScales>(this, _$identity);
}

abstract class _AppIconScales extends AppIconScales {
  factory _AppIconScales({required double rate}) = _$_AppIconScales;
  _AppIconScales._() : super._();

  @override
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$AppIconScalesCopyWith<_AppIconScales> get copyWith =>
      throw _privateConstructorUsedError;
}

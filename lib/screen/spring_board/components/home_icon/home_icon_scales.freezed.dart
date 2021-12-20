// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_icon_scales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeIconScalesTearOff {
  const _$HomeIconScalesTearOff();

  _HomeIconScales call(
      {required AppIconScales appIconScales, required double rate}) {
    return _HomeIconScales(
      appIconScales: appIconScales,
      rate: rate,
    );
  }
}

/// @nodoc
const $HomeIconScales = _$HomeIconScalesTearOff();

/// @nodoc
mixin _$HomeIconScales {
  AppIconScales get appIconScales => throw _privateConstructorUsedError;
  double get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeIconScalesCopyWith<HomeIconScales> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeIconScalesCopyWith<$Res> {
  factory $HomeIconScalesCopyWith(
          HomeIconScales value, $Res Function(HomeIconScales) then) =
      _$HomeIconScalesCopyWithImpl<$Res>;
  $Res call({AppIconScales appIconScales, double rate});

  $AppIconScalesCopyWith<$Res> get appIconScales;
}

/// @nodoc
class _$HomeIconScalesCopyWithImpl<$Res>
    implements $HomeIconScalesCopyWith<$Res> {
  _$HomeIconScalesCopyWithImpl(this._value, this._then);

  final HomeIconScales _value;
  // ignore: unused_field
  final $Res Function(HomeIconScales) _then;

  @override
  $Res call({
    Object? appIconScales = freezed,
    Object? rate = freezed,
  }) {
    return _then(_value.copyWith(
      appIconScales: appIconScales == freezed
          ? _value.appIconScales
          : appIconScales // ignore: cast_nullable_to_non_nullable
              as AppIconScales,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }

  @override
  $AppIconScalesCopyWith<$Res> get appIconScales {
    return $AppIconScalesCopyWith<$Res>(_value.appIconScales, (value) {
      return _then(_value.copyWith(appIconScales: value));
    });
  }
}

/// @nodoc
abstract class _$HomeIconScalesCopyWith<$Res>
    implements $HomeIconScalesCopyWith<$Res> {
  factory _$HomeIconScalesCopyWith(
          _HomeIconScales value, $Res Function(_HomeIconScales) then) =
      __$HomeIconScalesCopyWithImpl<$Res>;
  @override
  $Res call({AppIconScales appIconScales, double rate});

  @override
  $AppIconScalesCopyWith<$Res> get appIconScales;
}

/// @nodoc
class __$HomeIconScalesCopyWithImpl<$Res>
    extends _$HomeIconScalesCopyWithImpl<$Res>
    implements _$HomeIconScalesCopyWith<$Res> {
  __$HomeIconScalesCopyWithImpl(
      _HomeIconScales _value, $Res Function(_HomeIconScales) _then)
      : super(_value, (v) => _then(v as _HomeIconScales));

  @override
  _HomeIconScales get _value => super._value as _HomeIconScales;

  @override
  $Res call({
    Object? appIconScales = freezed,
    Object? rate = freezed,
  }) {
    return _then(_HomeIconScales(
      appIconScales: appIconScales == freezed
          ? _value.appIconScales
          : appIconScales // ignore: cast_nullable_to_non_nullable
              as AppIconScales,
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_HomeIconScales extends _HomeIconScales {
  _$_HomeIconScales({required this.appIconScales, required this.rate})
      : super._();

  @override
  final AppIconScales appIconScales;
  @override
  final double rate;

  @override
  String toString() {
    return 'HomeIconScales(appIconScales: $appIconScales, rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeIconScales &&
            const DeepCollectionEquality()
                .equals(other.appIconScales, appIconScales) &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(appIconScales),
      const DeepCollectionEquality().hash(rate));

  @JsonKey(ignore: true)
  @override
  _$HomeIconScalesCopyWith<_HomeIconScales> get copyWith =>
      __$HomeIconScalesCopyWithImpl<_HomeIconScales>(this, _$identity);
}

abstract class _HomeIconScales extends HomeIconScales {
  factory _HomeIconScales(
      {required AppIconScales appIconScales,
      required double rate}) = _$_HomeIconScales;
  _HomeIconScales._() : super._();

  @override
  AppIconScales get appIconScales;
  @override
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$HomeIconScalesCopyWith<_HomeIconScales> get copyWith =>
      throw _privateConstructorUsedError;
}

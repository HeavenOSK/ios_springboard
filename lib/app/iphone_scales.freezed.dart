// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'iphone_scales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$IPhoneScalesTearOff {
  const _$IPhoneScalesTearOff();

  _IPhoneScales call({required double rate}) {
    return _IPhoneScales(
      rate: rate,
    );
  }
}

/// @nodoc
const $IPhoneScales = _$IPhoneScalesTearOff();

/// @nodoc
mixin _$IPhoneScales {
  double get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $IPhoneScalesCopyWith<IPhoneScales> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IPhoneScalesCopyWith<$Res> {
  factory $IPhoneScalesCopyWith(
          IPhoneScales value, $Res Function(IPhoneScales) then) =
      _$IPhoneScalesCopyWithImpl<$Res>;
  $Res call({double rate});
}

/// @nodoc
class _$IPhoneScalesCopyWithImpl<$Res> implements $IPhoneScalesCopyWith<$Res> {
  _$IPhoneScalesCopyWithImpl(this._value, this._then);

  final IPhoneScales _value;
  // ignore: unused_field
  final $Res Function(IPhoneScales) _then;

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
abstract class _$IPhoneScalesCopyWith<$Res>
    implements $IPhoneScalesCopyWith<$Res> {
  factory _$IPhoneScalesCopyWith(
          _IPhoneScales value, $Res Function(_IPhoneScales) then) =
      __$IPhoneScalesCopyWithImpl<$Res>;
  @override
  $Res call({double rate});
}

/// @nodoc
class __$IPhoneScalesCopyWithImpl<$Res> extends _$IPhoneScalesCopyWithImpl<$Res>
    implements _$IPhoneScalesCopyWith<$Res> {
  __$IPhoneScalesCopyWithImpl(
      _IPhoneScales _value, $Res Function(_IPhoneScales) _then)
      : super(_value, (v) => _then(v as _IPhoneScales));

  @override
  _IPhoneScales get _value => super._value as _IPhoneScales;

  @override
  $Res call({
    Object? rate = freezed,
  }) {
    return _then(_IPhoneScales(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_IPhoneScales extends _IPhoneScales {
  _$_IPhoneScales({required this.rate}) : super._();

  @override
  final double rate;

  @override
  String toString() {
    return 'IPhoneScales(rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _IPhoneScales &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rate));

  @JsonKey(ignore: true)
  @override
  _$IPhoneScalesCopyWith<_IPhoneScales> get copyWith =>
      __$IPhoneScalesCopyWithImpl<_IPhoneScales>(this, _$identity);
}

abstract class _IPhoneScales extends IPhoneScales {
  factory _IPhoneScales({required double rate}) = _$_IPhoneScales;
  _IPhoneScales._() : super._();

  @override
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$IPhoneScalesCopyWith<_IPhoneScales> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spring_board_scales.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SpringBoardScalesTearOff {
  const _$SpringBoardScalesTearOff();

  _SpringBoardScales call({required double rate}) {
    return _SpringBoardScales(
      rate: rate,
    );
  }
}

/// @nodoc
const $SpringBoardScales = _$SpringBoardScalesTearOff();

/// @nodoc
mixin _$SpringBoardScales {
  double get rate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpringBoardScalesCopyWith<SpringBoardScales> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpringBoardScalesCopyWith<$Res> {
  factory $SpringBoardScalesCopyWith(
          SpringBoardScales value, $Res Function(SpringBoardScales) then) =
      _$SpringBoardScalesCopyWithImpl<$Res>;
  $Res call({double rate});
}

/// @nodoc
class _$SpringBoardScalesCopyWithImpl<$Res>
    implements $SpringBoardScalesCopyWith<$Res> {
  _$SpringBoardScalesCopyWithImpl(this._value, this._then);

  final SpringBoardScales _value;
  // ignore: unused_field
  final $Res Function(SpringBoardScales) _then;

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
abstract class _$SpringBoardScalesCopyWith<$Res>
    implements $SpringBoardScalesCopyWith<$Res> {
  factory _$SpringBoardScalesCopyWith(
          _SpringBoardScales value, $Res Function(_SpringBoardScales) then) =
      __$SpringBoardScalesCopyWithImpl<$Res>;
  @override
  $Res call({double rate});
}

/// @nodoc
class __$SpringBoardScalesCopyWithImpl<$Res>
    extends _$SpringBoardScalesCopyWithImpl<$Res>
    implements _$SpringBoardScalesCopyWith<$Res> {
  __$SpringBoardScalesCopyWithImpl(
      _SpringBoardScales _value, $Res Function(_SpringBoardScales) _then)
      : super(_value, (v) => _then(v as _SpringBoardScales));

  @override
  _SpringBoardScales get _value => super._value as _SpringBoardScales;

  @override
  $Res call({
    Object? rate = freezed,
  }) {
    return _then(_SpringBoardScales(
      rate: rate == freezed
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_SpringBoardScales extends _SpringBoardScales {
  _$_SpringBoardScales({required this.rate}) : super._();

  @override
  final double rate;

  @override
  String toString() {
    return 'SpringBoardScales(rate: $rate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpringBoardScales &&
            const DeepCollectionEquality().equals(other.rate, rate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(rate));

  @JsonKey(ignore: true)
  @override
  _$SpringBoardScalesCopyWith<_SpringBoardScales> get copyWith =>
      __$SpringBoardScalesCopyWithImpl<_SpringBoardScales>(this, _$identity);
}

abstract class _SpringBoardScales extends SpringBoardScales {
  factory _SpringBoardScales({required double rate}) = _$_SpringBoardScales;
  _SpringBoardScales._() : super._();

  @override
  double get rate;
  @override
  @JsonKey(ignore: true)
  _$SpringBoardScalesCopyWith<_SpringBoardScales> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_icon_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeIconSessionTearOff {
  const _$HomeIconSessionTearOff();

  _HomeIconSession call(
      {HomeIconMode mode = HomeIconMode.waiting, bool locked = false}) {
    return _HomeIconSession(
      mode: mode,
      locked: locked,
    );
  }
}

/// @nodoc
const $HomeIconSession = _$HomeIconSessionTearOff();

/// @nodoc
mixin _$HomeIconSession {
  HomeIconMode get mode => throw _privateConstructorUsedError;
  bool get locked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeIconSessionCopyWith<HomeIconSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeIconSessionCopyWith<$Res> {
  factory $HomeIconSessionCopyWith(
          HomeIconSession value, $Res Function(HomeIconSession) then) =
      _$HomeIconSessionCopyWithImpl<$Res>;
  $Res call({HomeIconMode mode, bool locked});
}

/// @nodoc
class _$HomeIconSessionCopyWithImpl<$Res>
    implements $HomeIconSessionCopyWith<$Res> {
  _$HomeIconSessionCopyWithImpl(this._value, this._then);

  final HomeIconSession _value;
  // ignore: unused_field
  final $Res Function(HomeIconSession) _then;

  @override
  $Res call({
    Object? mode = freezed,
    Object? locked = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as HomeIconMode,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HomeIconSessionCopyWith<$Res>
    implements $HomeIconSessionCopyWith<$Res> {
  factory _$HomeIconSessionCopyWith(
          _HomeIconSession value, $Res Function(_HomeIconSession) then) =
      __$HomeIconSessionCopyWithImpl<$Res>;
  @override
  $Res call({HomeIconMode mode, bool locked});
}

/// @nodoc
class __$HomeIconSessionCopyWithImpl<$Res>
    extends _$HomeIconSessionCopyWithImpl<$Res>
    implements _$HomeIconSessionCopyWith<$Res> {
  __$HomeIconSessionCopyWithImpl(
      _HomeIconSession _value, $Res Function(_HomeIconSession) _then)
      : super(_value, (v) => _then(v as _HomeIconSession));

  @override
  _HomeIconSession get _value => super._value as _HomeIconSession;

  @override
  $Res call({
    Object? mode = freezed,
    Object? locked = freezed,
  }) {
    return _then(_HomeIconSession(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as HomeIconMode,
      locked: locked == freezed
          ? _value.locked
          : locked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeIconSession implements _HomeIconSession {
  const _$_HomeIconSession(
      {this.mode = HomeIconMode.waiting, this.locked = false});

  @JsonKey(defaultValue: HomeIconMode.waiting)
  @override
  final HomeIconMode mode;
  @JsonKey(defaultValue: false)
  @override
  final bool locked;

  @override
  String toString() {
    return 'HomeIconSession(mode: $mode, locked: $locked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeIconSession &&
            const DeepCollectionEquality().equals(other.mode, mode) &&
            const DeepCollectionEquality().equals(other.locked, locked));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mode),
      const DeepCollectionEquality().hash(locked));

  @JsonKey(ignore: true)
  @override
  _$HomeIconSessionCopyWith<_HomeIconSession> get copyWith =>
      __$HomeIconSessionCopyWithImpl<_HomeIconSession>(this, _$identity);
}

abstract class _HomeIconSession implements HomeIconSession {
  const factory _HomeIconSession({HomeIconMode mode, bool locked}) =
      _$_HomeIconSession;

  @override
  HomeIconMode get mode;
  @override
  bool get locked;
  @override
  @JsonKey(ignore: true)
  _$HomeIconSessionCopyWith<_HomeIconSession> get copyWith =>
      throw _privateConstructorUsedError;
}

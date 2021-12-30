// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dragging_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DraggingStateTearOff {
  const _$DraggingStateTearOff();

  _DraggingState call(
      {required int id,
      required Offset avatarGlobalPosition,
      required Offset dragDetectingPosition}) {
    return _DraggingState(
      id: id,
      avatarGlobalPosition: avatarGlobalPosition,
      dragDetectingPosition: dragDetectingPosition,
    );
  }

  _NoDragging noDragging() {
    return const _NoDragging();
  }
}

/// @nodoc
const $DraggingState = _$DraggingStateTearOff();

/// @nodoc
mixin _$DraggingState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, Offset avatarGlobalPosition, Offset dragDetectingPosition)
        $default, {
    required TResult Function() noDragging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            int id, Offset avatarGlobalPosition, Offset dragDetectingPosition)?
        $default, {
    TResult Function()? noDragging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, Offset avatarGlobalPosition, Offset dragDetectingPosition)?
        $default, {
    TResult Function()? noDragging,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DraggingState value) $default, {
    required TResult Function(_NoDragging value) noDragging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DraggingState value)? $default, {
    TResult Function(_NoDragging value)? noDragging,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DraggingState value)? $default, {
    TResult Function(_NoDragging value)? noDragging,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DraggingStateCopyWith<$Res> {
  factory $DraggingStateCopyWith(
          DraggingState value, $Res Function(DraggingState) then) =
      _$DraggingStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$DraggingStateCopyWithImpl<$Res>
    implements $DraggingStateCopyWith<$Res> {
  _$DraggingStateCopyWithImpl(this._value, this._then);

  final DraggingState _value;
  // ignore: unused_field
  final $Res Function(DraggingState) _then;
}

/// @nodoc
abstract class _$DraggingStateCopyWith<$Res> {
  factory _$DraggingStateCopyWith(
          _DraggingState value, $Res Function(_DraggingState) then) =
      __$DraggingStateCopyWithImpl<$Res>;
  $Res call(
      {int id, Offset avatarGlobalPosition, Offset dragDetectingPosition});
}

/// @nodoc
class __$DraggingStateCopyWithImpl<$Res>
    extends _$DraggingStateCopyWithImpl<$Res>
    implements _$DraggingStateCopyWith<$Res> {
  __$DraggingStateCopyWithImpl(
      _DraggingState _value, $Res Function(_DraggingState) _then)
      : super(_value, (v) => _then(v as _DraggingState));

  @override
  _DraggingState get _value => super._value as _DraggingState;

  @override
  $Res call({
    Object? id = freezed,
    Object? avatarGlobalPosition = freezed,
    Object? dragDetectingPosition = freezed,
  }) {
    return _then(_DraggingState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      avatarGlobalPosition: avatarGlobalPosition == freezed
          ? _value.avatarGlobalPosition
          : avatarGlobalPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
      dragDetectingPosition: dragDetectingPosition == freezed
          ? _value.dragDetectingPosition
          : dragDetectingPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$_DraggingState implements _DraggingState {
  const _$_DraggingState(
      {required this.id,
      required this.avatarGlobalPosition,
      required this.dragDetectingPosition});

  @override
  final int id;
  @override
  final Offset avatarGlobalPosition;
  @override
  final Offset dragDetectingPosition;

  @override
  String toString() {
    return 'DraggingState(id: $id, avatarGlobalPosition: $avatarGlobalPosition, dragDetectingPosition: $dragDetectingPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DraggingState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.avatarGlobalPosition, avatarGlobalPosition) &&
            const DeepCollectionEquality()
                .equals(other.dragDetectingPosition, dragDetectingPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(avatarGlobalPosition),
      const DeepCollectionEquality().hash(dragDetectingPosition));

  @JsonKey(ignore: true)
  @override
  _$DraggingStateCopyWith<_DraggingState> get copyWith =>
      __$DraggingStateCopyWithImpl<_DraggingState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, Offset avatarGlobalPosition, Offset dragDetectingPosition)
        $default, {
    required TResult Function() noDragging,
  }) {
    return $default(id, avatarGlobalPosition, dragDetectingPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            int id, Offset avatarGlobalPosition, Offset dragDetectingPosition)?
        $default, {
    TResult Function()? noDragging,
  }) {
    return $default?.call(id, avatarGlobalPosition, dragDetectingPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, Offset avatarGlobalPosition, Offset dragDetectingPosition)?
        $default, {
    TResult Function()? noDragging,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, avatarGlobalPosition, dragDetectingPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DraggingState value) $default, {
    required TResult Function(_NoDragging value) noDragging,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DraggingState value)? $default, {
    TResult Function(_NoDragging value)? noDragging,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DraggingState value)? $default, {
    TResult Function(_NoDragging value)? noDragging,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _DraggingState implements DraggingState {
  const factory _DraggingState(
      {required int id,
      required Offset avatarGlobalPosition,
      required Offset dragDetectingPosition}) = _$_DraggingState;

  int get id;
  Offset get avatarGlobalPosition;
  Offset get dragDetectingPosition;
  @JsonKey(ignore: true)
  _$DraggingStateCopyWith<_DraggingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoDraggingCopyWith<$Res> {
  factory _$NoDraggingCopyWith(
          _NoDragging value, $Res Function(_NoDragging) then) =
      __$NoDraggingCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoDraggingCopyWithImpl<$Res> extends _$DraggingStateCopyWithImpl<$Res>
    implements _$NoDraggingCopyWith<$Res> {
  __$NoDraggingCopyWithImpl(
      _NoDragging _value, $Res Function(_NoDragging) _then)
      : super(_value, (v) => _then(v as _NoDragging));

  @override
  _NoDragging get _value => super._value as _NoDragging;
}

/// @nodoc

class _$_NoDragging implements _NoDragging {
  const _$_NoDragging();

  @override
  String toString() {
    return 'DraggingState.noDragging()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoDragging);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int id, Offset avatarGlobalPosition, Offset dragDetectingPosition)
        $default, {
    required TResult Function() noDragging,
  }) {
    return noDragging();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            int id, Offset avatarGlobalPosition, Offset dragDetectingPosition)?
        $default, {
    TResult Function()? noDragging,
  }) {
    return noDragging?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int id, Offset avatarGlobalPosition, Offset dragDetectingPosition)?
        $default, {
    TResult Function()? noDragging,
    required TResult orElse(),
  }) {
    if (noDragging != null) {
      return noDragging();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DraggingState value) $default, {
    required TResult Function(_NoDragging value) noDragging,
  }) {
    return noDragging(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DraggingState value)? $default, {
    TResult Function(_NoDragging value)? noDragging,
  }) {
    return noDragging?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DraggingState value)? $default, {
    TResult Function(_NoDragging value)? noDragging,
    required TResult orElse(),
  }) {
    if (noDragging != null) {
      return noDragging(this);
    }
    return orElse();
  }
}

abstract class _NoDragging implements DraggingState {
  const factory _NoDragging() = _$_NoDragging;
}

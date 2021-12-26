// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reodered_history.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReorderedHistoryTearOff {
  const _$ReorderedHistoryTearOff();

  _ReorderedHistory call({required int id, required int dragTargetIndex}) {
    return _ReorderedHistory(
      id: id,
      dragTargetIndex: dragTargetIndex,
    );
  }
}

/// @nodoc
const $ReorderedHistory = _$ReorderedHistoryTearOff();

/// @nodoc
mixin _$ReorderedHistory {
  int get id => throw _privateConstructorUsedError;
  int get dragTargetIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReorderedHistoryCopyWith<ReorderedHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReorderedHistoryCopyWith<$Res> {
  factory $ReorderedHistoryCopyWith(
          ReorderedHistory value, $Res Function(ReorderedHistory) then) =
      _$ReorderedHistoryCopyWithImpl<$Res>;
  $Res call({int id, int dragTargetIndex});
}

/// @nodoc
class _$ReorderedHistoryCopyWithImpl<$Res>
    implements $ReorderedHistoryCopyWith<$Res> {
  _$ReorderedHistoryCopyWithImpl(this._value, this._then);

  final ReorderedHistory _value;
  // ignore: unused_field
  final $Res Function(ReorderedHistory) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? dragTargetIndex = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dragTargetIndex: dragTargetIndex == freezed
          ? _value.dragTargetIndex
          : dragTargetIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ReorderedHistoryCopyWith<$Res>
    implements $ReorderedHistoryCopyWith<$Res> {
  factory _$ReorderedHistoryCopyWith(
          _ReorderedHistory value, $Res Function(_ReorderedHistory) then) =
      __$ReorderedHistoryCopyWithImpl<$Res>;
  @override
  $Res call({int id, int dragTargetIndex});
}

/// @nodoc
class __$ReorderedHistoryCopyWithImpl<$Res>
    extends _$ReorderedHistoryCopyWithImpl<$Res>
    implements _$ReorderedHistoryCopyWith<$Res> {
  __$ReorderedHistoryCopyWithImpl(
      _ReorderedHistory _value, $Res Function(_ReorderedHistory) _then)
      : super(_value, (v) => _then(v as _ReorderedHistory));

  @override
  _ReorderedHistory get _value => super._value as _ReorderedHistory;

  @override
  $Res call({
    Object? id = freezed,
    Object? dragTargetIndex = freezed,
  }) {
    return _then(_ReorderedHistory(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      dragTargetIndex: dragTargetIndex == freezed
          ? _value.dragTargetIndex
          : dragTargetIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ReorderedHistory implements _ReorderedHistory {
  const _$_ReorderedHistory({required this.id, required this.dragTargetIndex});

  @override
  final int id;
  @override
  final int dragTargetIndex;

  @override
  String toString() {
    return 'ReorderedHistory(id: $id, dragTargetIndex: $dragTargetIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReorderedHistory &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.dragTargetIndex, dragTargetIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(dragTargetIndex));

  @JsonKey(ignore: true)
  @override
  _$ReorderedHistoryCopyWith<_ReorderedHistory> get copyWith =>
      __$ReorderedHistoryCopyWithImpl<_ReorderedHistory>(this, _$identity);
}

abstract class _ReorderedHistory implements ReorderedHistory {
  const factory _ReorderedHistory(
      {required int id, required int dragTargetIndex}) = _$_ReorderedHistory;

  @override
  int get id;
  @override
  int get dragTargetIndex;
  @override
  @JsonKey(ignore: true)
  _$ReorderedHistoryCopyWith<_ReorderedHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

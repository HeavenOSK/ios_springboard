// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'spring_board_storage.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SpringBoardStorageTearOff {
  const _$SpringBoardStorageTearOff();

  _SpringBoardStorage call(
      {required List<MockIconData> mockDataList, required List<int> order}) {
    return _SpringBoardStorage(
      mockDataList: mockDataList,
      order: order,
    );
  }
}

/// @nodoc
const $SpringBoardStorage = _$SpringBoardStorageTearOff();

/// @nodoc
mixin _$SpringBoardStorage {
  List<MockIconData> get mockDataList => throw _privateConstructorUsedError;
  List<int> get order => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SpringBoardStorageCopyWith<SpringBoardStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpringBoardStorageCopyWith<$Res> {
  factory $SpringBoardStorageCopyWith(
          SpringBoardStorage value, $Res Function(SpringBoardStorage) then) =
      _$SpringBoardStorageCopyWithImpl<$Res>;
  $Res call({List<MockIconData> mockDataList, List<int> order});
}

/// @nodoc
class _$SpringBoardStorageCopyWithImpl<$Res>
    implements $SpringBoardStorageCopyWith<$Res> {
  _$SpringBoardStorageCopyWithImpl(this._value, this._then);

  final SpringBoardStorage _value;
  // ignore: unused_field
  final $Res Function(SpringBoardStorage) _then;

  @override
  $Res call({
    Object? mockDataList = freezed,
    Object? order = freezed,
  }) {
    return _then(_value.copyWith(
      mockDataList: mockDataList == freezed
          ? _value.mockDataList
          : mockDataList // ignore: cast_nullable_to_non_nullable
              as List<MockIconData>,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$SpringBoardStorageCopyWith<$Res>
    implements $SpringBoardStorageCopyWith<$Res> {
  factory _$SpringBoardStorageCopyWith(
          _SpringBoardStorage value, $Res Function(_SpringBoardStorage) then) =
      __$SpringBoardStorageCopyWithImpl<$Res>;
  @override
  $Res call({List<MockIconData> mockDataList, List<int> order});
}

/// @nodoc
class __$SpringBoardStorageCopyWithImpl<$Res>
    extends _$SpringBoardStorageCopyWithImpl<$Res>
    implements _$SpringBoardStorageCopyWith<$Res> {
  __$SpringBoardStorageCopyWithImpl(
      _SpringBoardStorage _value, $Res Function(_SpringBoardStorage) _then)
      : super(_value, (v) => _then(v as _SpringBoardStorage));

  @override
  _SpringBoardStorage get _value => super._value as _SpringBoardStorage;

  @override
  $Res call({
    Object? mockDataList = freezed,
    Object? order = freezed,
  }) {
    return _then(_SpringBoardStorage(
      mockDataList: mockDataList == freezed
          ? _value.mockDataList
          : mockDataList // ignore: cast_nullable_to_non_nullable
              as List<MockIconData>,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_SpringBoardStorage implements _SpringBoardStorage {
  const _$_SpringBoardStorage(
      {required this.mockDataList, required this.order});

  @override
  final List<MockIconData> mockDataList;
  @override
  final List<int> order;

  @override
  String toString() {
    return 'SpringBoardStorage(mockDataList: $mockDataList, order: $order)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SpringBoardStorage &&
            const DeepCollectionEquality()
                .equals(other.mockDataList, mockDataList) &&
            const DeepCollectionEquality().equals(other.order, order));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(mockDataList),
      const DeepCollectionEquality().hash(order));

  @JsonKey(ignore: true)
  @override
  _$SpringBoardStorageCopyWith<_SpringBoardStorage> get copyWith =>
      __$SpringBoardStorageCopyWithImpl<_SpringBoardStorage>(this, _$identity);
}

abstract class _SpringBoardStorage implements SpringBoardStorage {
  const factory _SpringBoardStorage(
      {required List<MockIconData> mockDataList,
      required List<int> order}) = _$_SpringBoardStorage;

  @override
  List<MockIconData> get mockDataList;
  @override
  List<int> get order;
  @override
  @JsonKey(ignore: true)
  _$SpringBoardStorageCopyWith<_SpringBoardStorage> get copyWith =>
      throw _privateConstructorUsedError;
}

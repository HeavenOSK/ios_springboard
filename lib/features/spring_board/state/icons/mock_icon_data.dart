import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'mock_icon_data.freezed.dart';

@freezed
class MockIconData with _$MockIconData {
  factory MockIconData({
    required int id,
    required Color color,
  }) = _MockIconData;

  MockIconData._();

  late final name = 'name-$id';
}

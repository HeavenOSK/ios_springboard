import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'iphone_scales.freezed.dart';

@freezed
class IPhoneScales with _$IPhoneScales {
  factory IPhoneScales({
    required double rate,
  }) = _IPhoneScales;

  IPhoneScales._();

  late final caseSize = const Size(
        67.3,
        138.4,
      ) *
      rate;
  late final caseRadius = 8 * rate;

  late final padding = const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 17,
      ) *
      rate;

  late final micHoleSize = (const Size(
        12,
        1.5,
      )) *
      rate;

  late final speakerHoleBottomMargin = 7 * rate;
  late final speakerHoleRightMargin = 4 * rate;

  late final frontCameraRadius = 0.75 * rate;
  late final homeButtonRadius = 5.0 * rate;
}

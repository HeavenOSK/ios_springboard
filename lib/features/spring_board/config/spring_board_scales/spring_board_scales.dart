import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ios_springboard/components/atom/iphone/config/iphone_scales.dart';

part 'spring_board_scales.freezed.dart';

@freezed
class SpringBoardScales with _$SpringBoardScales {
  factory SpringBoardScales({
    required double rate,
  }) = _SpringBoardScales;

  SpringBoardScales._();

  late final bottomAreaHeight = 14.0 * rate;
  late final verticalSpacing = 1.0 * rate;
  late final horizontalSpacing = 4.1 * rate;
  late final horizontalPadding = 4.0 * rate;
  late final topPadding = 5.0 * rate;
}

extension SpringBoardScalesX on SpringBoardScales {
  Size slotArea({
    required IPhoneScales iPhoneScales,
  }) {
    return Size(
      iPhoneScales.screenSize.width - horizontalPadding * 2,
      iPhoneScales.screenSize.height - topPadding - bottomAreaHeight,
    );
  }
}

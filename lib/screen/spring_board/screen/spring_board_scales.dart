import 'package:freezed_annotation/freezed_annotation.dart';

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

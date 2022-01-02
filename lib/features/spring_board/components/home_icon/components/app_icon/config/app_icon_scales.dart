import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_icon_scales.freezed.dart';

@freezed
class AppIconScales with _$AppIconScales {
  factory AppIconScales({
    required double rate,
  }) = _AppIconScales;

  AppIconScales._();

  late final double iconSize = 9.2 * rate;
  late final double borderRadius = 1.9 * rate;
}

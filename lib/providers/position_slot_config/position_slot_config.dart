import 'package:freezed_annotation/freezed_annotation.dart';

part 'position_slot_config.freezed.dart';

@freezed
class PositionSlotConfig with _$PositionSlotConfig {
  const factory PositionSlotConfig({
    @Default(4) int rowCount,
    @Default(6) int columnCount,
  }) = _PositionSlotConfig;
}

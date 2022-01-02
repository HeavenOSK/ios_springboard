import 'package:freezed_annotation/freezed_annotation.dart';

part 'slot_config.freezed.dart';

@freezed
class SlotConfig with _$SlotConfig {
  const factory SlotConfig({
    @Default(4) int rowCount,
    @Default(6) int columnCount,
  }) = _SlotConfig;
}

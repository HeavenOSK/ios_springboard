import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/providers/position_slot_config/position_slot_config.dart';

final positionSlotConfigProvider = StateProvider(
  (_) => const PositionSlotConfig(),
);

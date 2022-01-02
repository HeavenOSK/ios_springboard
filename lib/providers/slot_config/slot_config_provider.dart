import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/providers/slot_config/slot_config.dart';

final slotConfig = StateProvider(
  (_) => const SlotConfig(),
);

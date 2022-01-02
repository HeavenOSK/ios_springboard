import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/anchor_pattern.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/home_icon_order_faimily.dart';
import 'package:ios_springboard/providers/position_slot_config/position_slot_config_provider.dart';

final anchorPatternFamily = StateProvider.family<AnchorPattern, int>(
  (ref, id) {
    final index = ref.watch(
      homeIconOrderIndexFamily(id),
    );
    final config = ref.watch(positionSlotConfigProvider);
    final itemCount = config.rowCount * config.columnCount;
    final lastIndexOfHalfItems = itemCount ~/ 2 - 1;
    final showUnder = index <= lastIndexOfHalfItems;
    final showLeft = index % 4 <= 1;
    if (showUnder) {
      if (showLeft) {
        return AnchorPattern.underLeftArea;
      }
      return AnchorPattern.underRightArea;
    }
    if (showLeft) {
      return AnchorPattern.upLeftArea;
    }
    return AnchorPattern.upRightArea;
  },
);

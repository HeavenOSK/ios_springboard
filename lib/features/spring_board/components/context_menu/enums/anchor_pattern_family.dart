import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/enums/anchor_pattern.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/icon_order_faimily.dart';
import 'package:ios_springboard/providers/slot_config/slot_config_provider.dart';

final anchorPatternFamily = StateProvider.family<AnchorPattern, int>(
  (ref, id) {
    final index = ref.watch(iconOrderIndexFamily(id));
    final config = ref.watch(slotConfig);
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

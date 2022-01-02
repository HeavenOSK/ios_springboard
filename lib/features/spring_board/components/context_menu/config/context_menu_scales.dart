import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/config/slot_computed_props/slot_computed_props_provider.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';

final contextMenuScalesProvider = StateProvider<ContextMenuScales>(
  (ref) {
    final rate = ref.watch(scaleRate);
    final computedWidth = ref.watch(
      slotComputedProps.select(
        (value) => value.slotSize.width / 1.1 * 3,
      ),
    );
    return ContextMenuScales(
      rate: rate,
      computedWidth: computedWidth,
    );
  },
);

class ContextMenuScales {
  ContextMenuScales({
    required this.rate,
    required this.computedWidth,
  });

  final double rate;
  final double computedWidth;

  double get itemHeight => 8.2 / 1.1 * rate;

  double get itemHorizontalPadding => 2.5 / 1.1 * rate;
}

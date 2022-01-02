import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/slot_layer_computed_values_provider.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';

final contextMenuScalesProvider = StateProvider<ContextMenuScales>((ref) {
  final rate = ref.watch(scaleRateProvider);
  final computedWidth = ref.watch(
    slotLayerComputedValuesProvider.select(
      (value) => value.slotSize.width * 3,
    ),
  );
  return ContextMenuScales(
    rate: rate,
    computedWidth: computedWidth,
  );
});

class ContextMenuScales {
  ContextMenuScales({
    required this.rate,
    required this.computedWidth,
  });

  final double rate;
  final double computedWidth;

  double get itemHeight => 8.2 * rate;

  double get itemHorizontalPadding => 2.5 * rate;
}

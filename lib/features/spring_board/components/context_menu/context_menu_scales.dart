import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';

final contextMenuScalesProvider = StateProvider<ContextMenuScales>((ref) {
  final rate = ref.watch(scaleRateProvider);
  return ContextMenuScales(rate);
});

class ContextMenuScales {
  ContextMenuScales(this.rate);

  final double rate;

  double get width => 38.6 * rate;

  double get itemHeight => 8.2 * rate;

  double get itemHorizontalPadding => 2.5 * rate;
}

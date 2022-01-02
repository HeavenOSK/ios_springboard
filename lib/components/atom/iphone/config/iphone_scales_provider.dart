import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/iphone/config/iphone_scales.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';

final iPhoneScalesProvider = StateProvider<IPhoneScales>(
  (ref) => IPhoneScales(
    rate: ref.watch(scaleRateProvider),
  ),
);

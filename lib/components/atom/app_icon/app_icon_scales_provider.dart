import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon_scales.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';

final appIconScalesProvider = StateProvider(
  (ref) => AppIconScales(
    rate: ref.watch(scaleRateProvider),
  ),
);

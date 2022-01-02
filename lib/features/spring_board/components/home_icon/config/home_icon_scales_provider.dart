import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon_scales_provider.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/config/home_icon_scales.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';

final homeIconScalesProvider = StateProvider<HomeIconScales>(
  (ref) => HomeIconScales(
    appIconScales: ref.watch(appIconScalesProvider),
    rate: ref.watch(scaleRateProvider),
  ),
);

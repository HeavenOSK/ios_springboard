import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon_scales_provider.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon/home_icon_scales.dart';

final homeIconScalesProvider = StateProvider(
  (ref) => HomeIconScales(
    appIconScales: ref.watch(appIconScalesProvider),
    rate: ref.watch(scaleRateProvider),
  ),
);

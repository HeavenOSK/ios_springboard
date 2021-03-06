import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/components/app_icon/config/app_icon_scales_provider.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/config/home_icon_scales.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';

final homeIconScales = StateProvider<HomeIconScales>(
  (ref) => HomeIconScales(
    appIconScales: ref.watch(appIconScalesProvider),
    rate: ref.watch(scaleRate),
  ),
);

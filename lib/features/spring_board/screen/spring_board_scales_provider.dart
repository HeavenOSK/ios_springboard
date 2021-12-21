import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/screen/spring_board_scales.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';

final springBoardScalesProvider = StateProvider(
  (ref) => SpringBoardScales(
    rate: ref.watch(scaleRateProvider),
  ),
);

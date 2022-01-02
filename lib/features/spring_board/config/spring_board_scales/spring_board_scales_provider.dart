import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/features/spring_board/config/spring_board_scales/spring_board_scales.dart';
import 'package:ios_springboard/providers/scale_rate_provider.dart';

final springBoardScales = StateProvider(
  (ref) => SpringBoardScales(
    rate: ref.watch(scaleRate),
  ),
);

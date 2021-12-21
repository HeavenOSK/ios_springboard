import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/constants/colors.dart';
import 'package:ios_springboard/screen/spring_board/components/slot_layer_computed/slot_layer_computed_provider.dart';

class DebugSlotLayer extends HookConsumerWidget {
  const DebugSlotLayer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slotLayerComputed = ref.watch(slotLayerComputedProvider);
    return Stack(
      children: List.generate(
        slotLayerComputed.positions.length,
        (index) {
          final position = slotLayerComputed.positions[index];
          return Positioned(
            top: position.dy,
            left: position.dx,
            child: Container(
              height: slotLayerComputed.slotSize.height,
              width: slotLayerComputed.slotSize.width,
              color: colors[index],
            ),
          );
        },
      ).toList(),
    );
  }
}

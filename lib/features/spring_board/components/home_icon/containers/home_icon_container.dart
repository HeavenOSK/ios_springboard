import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/drag_gesture_handler.dart';
import 'package:ios_springboard/components/atom/expandable.dart';
import 'package:ios_springboard/components/atom/shaker.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/presentationals/home_icon_presentational.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/home_icon_controller.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/home_icon_order_faimily.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/slot_layer_computed_values_provider.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer/mock_icon_data/mock_icon_data.dart';

class HomeIconContainer extends HookConsumerWidget {
  const HomeIconContainer({
    required this.mockIconData,
    Key? key,
  }) : super(key: key);

  final MockIconData mockIconData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeIconController = ref.watch(
      homeIconControllerProvider(
        mockIconData.id,
      ),
    );

    final slotLayerComputed = ref.watch(slotLayerComputedValuesProvider);
    final index = ref.watch(
      homeIconOrderIndexFamily(mockIconData.id),
    );
    final position = slotLayerComputed.slotPositions[index];
    return AnimatedPositioned(
      curve: Curves.easeOutCubic,
      duration: const Duration(milliseconds: 500),
      top: position.dy,
      left: position.dx,
      child: DragGestureHandler(
        canDrag: true,
        onDragStart: homeIconController.onDragStart,
        onDragUpdate: homeIconController.onDragUpdate,
        onDragEnd: homeIconController.onDragEnd,
        child: SizedBox.fromSize(
          size: slotLayerComputed.slotSize,
          child: Shaker(
            shaking: false,
            child: Expandable(
              expanding: false,
              size: slotLayerComputed.slotSize,
              child: SizedBox.fromSize(
                size: slotLayerComputed.slotSize,
                child: Center(
                  child: HomeIconPresentational(
                    shouldExpand: false,
                    shouldHideName: false,
                    mockIconData: mockIconData,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

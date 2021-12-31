import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/expandable.dart';
import 'package:ios_springboard/components/atom/shaker.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/presentationals/home_icon_presentational.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/avatar_visible_family.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/can_drag_start_family.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/home_icon_order_faimily.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/is_dragging_family.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/should_expand_family.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/should_shake_family.dart';
import 'package:ios_springboard/features/spring_board/components/spring_board_draggable.dart';
import 'package:ios_springboard/features/spring_board/state/dragging_controller/dragging_controller.dart';
import 'package:ios_springboard/features/spring_board/state/icons/mock_icon_data.dart';
import 'package:ios_springboard/features/spring_board/state/reorderer/reordering_controller.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/slot_layer_computed_values_provider.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_state/spiring_board_controller.dart';

class HomeIconContainer extends HookConsumerWidget {
  const HomeIconContainer({
    required this.mockIconData,
    Key? key,
  }) : super(key: key);

  final MockIconData mockIconData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slotLayerComputed = ref.watch(slotLayerComputedValuesProvider);
    final canDragStart = ref.watch(canDragStartFamily(mockIconData.id));
    final isDragging = ref.watch(isDraggingFamily(mockIconData.id));
    final shouldShake = ref.watch(shouldShakeFamily(mockIconData.id));
    final shouldExpand = ref.watch(shouldExpandFamily(mockIconData.id));
    final avatarVisible = ref.watch(avatarVisibleFamily(mockIconData.id));

    final index = ref.watch(
      homeIconOrderIndexFamily(mockIconData.id),
    );
    final position = slotLayerComputed.slotPositions[index];
    return AnimatedPositioned(
      curve: Curves.easeOutCubic,
      duration: const Duration(milliseconds: 500),
      top: position.dy,
      left: position.dx,
      child: SizedBox.fromSize(
        size: slotLayerComputed.slotSize,
        child: SpringBoardDraggable(
          avatarVisible: avatarVisible,
          canDrag: canDragStart,
          onDragStart: (globalPosition, localPosition) {
            ref.read(springBoardController.notifier).onTapStart(
                  appId: mockIconData.id,
                  dragGlobalPosition: globalPosition,
                  dragLocalPosition: localPosition,
                );
            ref.read(draggingControllerProvider.notifier).startDrag(
                  id: mockIconData.id,
                );
          },
          onDragEnd: () {
            ref.read(springBoardController.notifier).onTapEnd();
            ref.read(draggingControllerProvider.notifier).finishDrag();
          },
          onUpdate: (currentPosition) {
            ref.read(springBoardController.notifier).onDragUpdate(
                  dragGlobalPosition: currentPosition,
                );
            ref.read(reorderingController).updatePosition(
                  id: mockIconData.id,
                  dragGlobalPosition: currentPosition,
                );
          },
          currentSlotPosition: position,
          size: slotLayerComputed.slotSize,
          child: Shaker(
            shaking: shouldShake,
            child: Expandable(
              expanding: shouldExpand,
              size: slotLayerComputed.slotSize,
              child: SizedBox.fromSize(
                size: slotLayerComputed.slotSize,
                child: Center(
                  child: HomeIconPresentational(
                    shouldExpand: shouldExpand,
                    isDragging: isDragging,
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

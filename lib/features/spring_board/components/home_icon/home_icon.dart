import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon.dart';
import 'package:ios_springboard/components/atom/expandable.dart';
import 'package:ios_springboard/components/atom/shaker.dart';
import 'package:ios_springboard/features/spring_board/components/dragging_avatar.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/families/can_drag_start_family.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/families/is_dragging_family.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/families/should_expand_family.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/families/should_shake_family.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/home_icon_order_faimily.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/home_icon_scales_provider.dart';
import 'package:ios_springboard/features/spring_board/components/spring_board_draggable.dart';
import 'package:ios_springboard/features/spring_board/state/dragging_controller/dragging_controller.dart';
import 'package:ios_springboard/features/spring_board/state/reorderer/reordering_controller.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_state/spiring_board_controller.dart';
import 'package:ios_springboard/features/spring_board/storage/icons/mock_icon_data.dart';
import 'package:ios_springboard/providers/slot_layer_computed_values/slot_layer_computed_values_provider.dart';

class HomeIcon extends HookConsumerWidget {
  const HomeIcon({
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
    final avatarPosition = ref.watch(
      draggingControllerProvider.select(
        (s) => s.map(
          (value) => value.avatarGlobalPosition,
          noDragging: (_) => Offset.zero,
        ),
      ),
    );
    final avatarVisible = ref.watch(
      draggingControllerProvider.select(
        (s) => s.map(
          (value) => value.id == mockIconData.id,
          noDragging: (_) => false,
        ),
      ),
    );
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
          canDrag: canDragStart,
          onDragStart: (avatarGlobalPosition, dragDetectingPosition) {
            ref.read(springBoardController.notifier).onTapStart(
                  appId: mockIconData.id,
                );
            ref.read(draggingControllerProvider.notifier).startDrag(
                  id: mockIconData.id,
                  avatarGlobalPosition: avatarGlobalPosition,
                  dragDetectingPosition: dragDetectingPosition,
                );
          },
          onDragEnd: () {
            ref.read(springBoardController.notifier).onTapEnd();
            ref.read(draggingControllerProvider.notifier).finishDrag();
          },
          onUpdate: (avatarGlobalPosition, dragDetectingPosition) {
            ref.read(springBoardController.notifier).onDragUpdate();
            ref.read(draggingControllerProvider.notifier).updateDrag(
                  id: mockIconData.id,
                  avatarGlobalPosition: avatarGlobalPosition,
                  dragDetectingPosition: dragDetectingPosition,
                );
            ref.read(reorderingController).updatePosition(
                  id: mockIconData.id,
                  currentPosition: dragDetectingPosition,
                );
          },
          currentSlotPosition: position,
          size: slotLayerComputed.slotSize,
          child: DraggingAvatar(
            avatarVisible: avatarVisible,
            avatarPosition: avatarPosition,
            child: Shaker(
              shaking: shouldShake,
              child: Expandable(
                expanding: shouldExpand,
                size: slotLayerComputed.slotSize,
                child: SizedBox.fromSize(
                  size: slotLayerComputed.slotSize,
                  child: Center(
                    child: _HomeIcon(
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
      ),
    );
  }
}

class _HomeIcon extends HookConsumerWidget {
  const _HomeIcon({
    required this.shouldExpand,
    required this.isDragging,
    required this.mockIconData,
    Key? key,
  }) : super(key: key);

  final MockIconData mockIconData;
  final bool isDragging;
  final bool shouldExpand;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeIconScales = ref.watch(homeIconScalesProvider);
    return SizedBox(
      height: homeIconScales.areaSize.height,
      width: homeIconScales.areaSize.width,
      child: Column(
        children: [
          AppIcon(
            color: mockIconData.color,
            icon: mockIconData.id.toString(),
          ),
          Expanded(
            child: Center(
              child: Material(
                type: MaterialType.transparency,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 1.7),
                  child: FittedBox(
                    child: Opacity(
                      opacity: shouldExpand || isDragging ? 0.0 : 1.0,
                      child: Text(
                        mockIconData.name,
                        style: const TextStyle(
                          fontSize: 10,
                          height: 1,
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

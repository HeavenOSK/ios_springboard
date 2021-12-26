import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon.dart';
import 'package:ios_springboard/components/atom/shaker.dart';
import 'package:ios_springboard/components/atom/zoomable.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/home_icon_order_faimily.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/home_icon_scales_provider.dart';
import 'package:ios_springboard/features/spring_board/components/spring_board_draggable/spring_board_draggable.dart';
import 'package:ios_springboard/features/spring_board/state/dragging_state/dragging_controller.dart';
import 'package:ios_springboard/features/spring_board/state/icons/mock_icon_data.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed/slot_layer_computed_provider.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_controller.dart';

class HomeIcon extends HookConsumerWidget {
  const HomeIcon({
    required this.mockIconData,
    Key? key,
  }) : super(key: key);

  final MockIconData mockIconData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slotLayerComputed = ref.watch(slotLayerComputedProvider);
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
          onDragStart: () {
            ref.read(springBoardController.notifier).updateDragging(
                  isDragging: true,
                );
          },
          onDragEnd: () {
            ref.read(springBoardController.notifier).updateDragging(
                  isDragging: false,
                );
          },
          currentSlotPosition: position,
          size: slotLayerComputed.slotSize,
          onUpdate: (currentPosition) {
            ref.read(draggingController).updatePosition(
                  id: mockIconData.id,
                  currentPosition: currentPosition,
                );
          },
          child: Shaker(
            shaking: ref.watch(springBoardController).dragging,
            child: Zoomable(
              // zooming: ref.watch(springBoardController).dragging,
              size: slotLayerComputed.slotSize,
              duration: const Duration(seconds: 1),
              child: SizedBox.fromSize(
                size: slotLayerComputed.slotSize,
                child: Center(
                  child: _HomeIcon(
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

class _HomeIcon extends HookConsumerWidget {
  const _HomeIcon({
    required this.mockIconData,
    Key? key,
  }) : super(key: key);

  final MockIconData mockIconData;

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
        ],
      ),
    );
  }
}

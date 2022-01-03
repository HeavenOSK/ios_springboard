import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/expandable.dart';
import 'package:ios_springboard/components/atom/shaker.dart';
import 'package:ios_springboard/features/spring_board/components/avatar_presenter.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/enums/anchor_pattern_family.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/presentationals/home_icon_presentational.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/state/icon_order_faimily.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/home_icon_mode.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/home_icon_session_handler.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon_session_handler/states/drag_state_provider.dart';
import 'package:ios_springboard/features/spring_board/config/slot_computed_props/slot_computed_props_provider.dart';
import 'package:ios_springboard/features/spring_board/state/reorderer/reorderer.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_mode/spring_board_mode.dart';
import 'package:ios_springboard/features/spring_board/state/spring_board_mode/spring_board_mode_provider.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer/mock_icon_data/mock_icon_data.dart';

class HomeIcon extends HookConsumerWidget {
  const HomeIcon({
    required this.mockIconData,
    Key? key,
  }) : super(key: key);

  final MockIconData mockIconData;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slotLayerComputed = ref.watch(slotComputedProps);
    final shouldShake = ref.watch(
      springBoardMode.select(
        (value) => value.isReorderableMode,
      ),
    );
    final _isDragging = ref.watch(
      dragState(mockIconData.id).select(
        (value) => value.isDragging,
      ),
    );
    final _reorderer = ref.watch(reorderer);
    final index = ref.watch(
      iconOrderIndexFamily(mockIconData.id),
    );
    final position = slotLayerComputed.slotPositions[index];
    final anchorPattern = ref.watch(
      anchorPatternFamily(mockIconData.id),
    );
    return AnimatedPositioned(
      curve: Curves.easeOutCubic,
      duration: const Duration(milliseconds: 500),
      top: position.dy,
      left: position.dx,
      child: HomeIconSessionHandler(
        onDragUpdate: (globalPosition) {
          _reorderer.updatePosition(
            id: mockIconData.id,
            dragGlobalPosition: globalPosition,
          );
        },
        id: mockIconData.id,
        canDragStart: true,
        onTap: () {},
        builder: (
          context,
          mode,
          avatarPosition,
          dismissCallback,
        ) {
          final shouldExpand = mode.shouldExpand;
          return AvatarPresenter(
            id: mockIconData.id,
            shouldBlur: mode.shouldBlur,
            onTapBlur: dismissCallback,
            avatarVisible: mode.avatarVisible,
            avatarPosition: avatarPosition,
            child: SizedBox.fromSize(
              size: slotLayerComputed.slotSize,
              child: Shaker(
                shaking: !_isDragging && shouldShake,
                child: Expandable(
                  expanding: shouldExpand,
                  size: slotLayerComputed.slotSize,
                  child: SizedBox.fromSize(
                    size: slotLayerComputed.slotSize,
                    child: Center(
                      child: HomeIconPresentational(
                        anchorPattern: anchorPattern,
                        showContextMenu: mode.isShowContextMenu,
                        shouldExpand: mode != HomeIconMode.waiting,
                        shouldHideName: mode != HomeIconMode.waiting,
                        mockIconData: mockIconData,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

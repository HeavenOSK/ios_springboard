import 'package:flutter/material.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/anchor_pattern.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/anchor_pattern_family.dart';
import 'package:ios_springboard/features/spring_board/components/context_menu/context_menu.dart';
import 'package:ios_springboard/features/spring_board/state/slot_layer_computed_values/slot_layer_computed_values_provider.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer/mock_icon_data/mock_icon_data.dart';

class HomeIconPresentational extends HookConsumerWidget {
  const HomeIconPresentational({
    required this.shouldExpand,
    required this.shouldHideName,
    required this.mockIconData,
    required this.showContextMenu,
    required this.anchorPattern,
    Key? key,
  }) : super(key: key);

  final MockIconData mockIconData;
  final bool shouldHideName;
  final bool shouldExpand;
  final bool showContextMenu;
  final AnchorPattern anchorPattern;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final slotLayerComputed = ref.watch(
      slotLayerComputedValuesProvider,
    );
    final anchorPattern = ref.watch(
      anchorPatternFamily(mockIconData.id),
    );
    return SizedBox(
      height: slotLayerComputed.slotSize.height,
      width: slotLayerComputed.slotSize.width,
      child: Column(
        children: [
          PortalEntry(
            portal: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: ContextMenu(
                visible: showContextMenu,
                anchorPattern: anchorPattern,
              ),
            ),
            childAnchor: anchorPattern.targetAnchor,
            portalAnchor: anchorPattern.childAnchor,
            child: AppIcon(
              color: mockIconData.color,
              icon: mockIconData.id.toString(),
            ),
          ),
          Expanded(
            child: Center(
              child: Material(
                type: MaterialType.transparency,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 1.7,
                  ),
                  child: FittedBox(
                    child: AnimatedOpacity(
                      opacity: shouldExpand || shouldHideName ? 0.0 : 1.0,
                      duration: const Duration(milliseconds: 250),
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

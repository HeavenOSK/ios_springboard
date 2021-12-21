import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon/home_icon_order_faimily.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon/home_icon_scales_provider.dart';
import 'package:ios_springboard/screen/spring_board/components/slot_layer_computed/slot_layer_computed_provider.dart';
import 'package:ios_springboard/screen/spring_board/state/icons/mock_icon_data.dart';

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
    final position = slotLayerComputed.positions[index];
    return AnimatedPositioned(
      curve: Curves.easeOutCubic,
      duration: const Duration(milliseconds: 350),
      top: position.dy,
      left: position.dx,
      child: SizedBox.fromSize(
        size: slotLayerComputed.slotSize,
        child: Center(
          child: _HomeIcon(
            mockIconData: mockIconData,
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

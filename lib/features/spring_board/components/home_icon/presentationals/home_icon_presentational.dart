import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon.dart';
import 'package:ios_springboard/features/spring_board/components/home_icon/config/home_icon_scales_provider.dart';
import 'package:ios_springboard/features/spring_board/state/icons/mock_icon_data.dart';

class HomeIconPresentational extends HookConsumerWidget {
  const HomeIconPresentational({
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

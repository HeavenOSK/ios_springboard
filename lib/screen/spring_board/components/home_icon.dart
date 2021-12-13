import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon_scales.dart';

class HomeIcon extends HookConsumerWidget {
  const HomeIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: HomeIconScales.areaSize.height,
      width: HomeIconScales.areaSize.width,
      child: Column(
        children: const [
          AppIcon(),
          Expanded(
            child: Center(
              child: Material(
                type: MaterialType.transparency,
                child: SizedBox(
                  height: 1.7,
                  child: FittedBox(
                    child: Text(
                      'name',
                      style: TextStyle(
                        height: 1,
                        color: Colors.white,
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

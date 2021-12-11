import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:ios_springboard/components/atom/app_icon/app_icon.dart';
import 'package:ios_springboard/components/functional/shaker.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon_scales.dart';
import 'package:ios_springboard/screen/spring_board/state/spring_board_state.dart';

class HomeIcon extends HookConsumerWidget {
  const HomeIcon({
    this.onLongPress,
    Key? key,
  }) : super(key: key);

  final VoidCallback? onLongPress;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final shaking = ref.watch(
      springBoardState.select((value) => value.shaking),
    );
    return Shaker(
      shaking: shaking,
      child: SizedBox(
        height: HomeIconScales.areaSize.height,
        width: HomeIconScales.areaSize.width,
        child: Column(
          children: [
            AppIcon(
              onLongPress: onLongPress,
            ),
            const Expanded(
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
      ),
    );
  }
}

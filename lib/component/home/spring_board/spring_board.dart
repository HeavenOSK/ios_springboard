import 'package:flutter/material.dart';
import 'package:ios_springboard/component/home/app_icon/app_icon.dart';
import 'package:ios_springboard/component/home/spring_board/spring_board_scales.dart';
import 'package:ios_springboard/composable/home/home_icon/home_icon.dart';
import 'package:ios_springboard/composable/home/home_icon/home_icon_scales.dart';

class SpringBoard extends StatelessWidget {
  const SpringBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          child: _ScrollableArea(),
        ),
        _BottomArea(),
      ],
    );
  }
}

class _ScrollableArea extends StatelessWidget {
  const _ScrollableArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SpringBoardScales.bottomAreaHeight,
      width: double.infinity,
      color: Colors.blue,
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(
          horizontal: SpringBoardScales.horizontalPadding,
        ).copyWith(
          top: SpringBoardScales.topPadding,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 1,
          crossAxisSpacing: 4.1,
          childAspectRatio: 1 / HomeIconScales.areaSize.aspectRatio,
        ),
        itemBuilder: (context, index) => const HomeIcon(),
        itemCount: 24,
      ),
    );
  }
}

class _BottomArea extends StatelessWidget {
  const _BottomArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SpringBoardScales.bottomAreaHeight,
      width: double.infinity,
      color: Colors.amberAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: SpringBoardScales.horizontalPadding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AppIcon(),
            AppIcon(),
            AppIcon(),
            AppIcon(),
          ],
        ),
      ),
    );
  }
}

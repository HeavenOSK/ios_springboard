import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ios_springboard/components/app_icon/app_icon.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon.dart';
import 'package:ios_springboard/screen/spring_board/components/home_icon_scales.dart';
import 'package:ios_springboard/screen/spring_board/screen/spring_board_scales.dart';

class SpringBoard extends StatelessWidget {
  const SpringBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        Positioned.fill(
          child: _ScrollableArea(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: _BottomArea(),
        ),
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
    return SizedBox(
      height: SpringBoardScales.bottomAreaHeight,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned.fill(
            child: ClipRect(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 15,
                  sigmaY: 15,
                ),
                child: Container(
                  color: Colors.blue.shade50,
                ),
              ),
            ),
          ),
          Positioned.fill(
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
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ios_springboard/component/home/app_icon/app_icon.dart';
import 'package:ios_springboard/composable/home/home_icon/home_icon_scales.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: HomeIconScales.areaSize.height,
      width: HomeIconScales.areaSize.width,
      child: Column(
        children: const [
          AppIcon(),
        ],
      ),
    );
  }
}

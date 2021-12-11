import 'package:flutter/material.dart';
import 'package:ios_springboard/component/home/app_icon/app_icon.dart';
import 'package:ios_springboard/component/home/home_icon/home_icon_scales.dart';

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

import 'package:flutter/material.dart';
import 'package:ios_springboard/screen/spring_board/state/icons/mock_icon_data.dart';

final _colors = <Color>[
  Colors.yellowAccent,
  Colors.blueAccent,
  Colors.cyanAccent,
  Colors.deepOrangeAccent,
  Colors.deepPurpleAccent,
  Colors.orangeAccent,
  Colors.limeAccent,
  Colors.tealAccent,
];

MockIconData generateMockIconData(int index) => MockIconData(
      id: index,
      color: _colors[index % _colors.length],
    );

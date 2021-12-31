import 'package:flutter/material.dart';
import 'package:ios_springboard/features/spring_board/storage/spring_board_registerer/mock_icon_data/mock_icon_data.dart';

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

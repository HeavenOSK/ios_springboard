import 'package:flutter/material.dart';

enum AnchorPattern {
  underLeftArea,
  underRightArea,
  upLeftArea,
  upRightArea,
}

extension AnchorPatternX on AnchorPattern {
  Alignment get targetAnchor {
    switch (this) {
      case AnchorPattern.underLeftArea:
        return Alignment.bottomLeft;
      case AnchorPattern.underRightArea:
        return Alignment.bottomRight;
      case AnchorPattern.upLeftArea:
        return Alignment.topLeft;
      case AnchorPattern.upRightArea:
        return Alignment.topRight;
    }
  }

  Alignment get childAnchor {
    switch (this) {
      case AnchorPattern.underLeftArea:
        return Alignment.topLeft;
      case AnchorPattern.underRightArea:
        return Alignment.topRight;
      case AnchorPattern.upLeftArea:
        return Alignment.bottomLeft;

      case AnchorPattern.upRightArea:
        return Alignment.bottomRight;
    }
  }
}

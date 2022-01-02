import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Anchored extends ParentDataWidget<StackParentData> {
  const Anchored({
    Key? key,
    required this.targetRect,
    required this.childAnchor,
    required this.targetAnchor,
    required this.childSize,
    required Widget child,
  }) : super(key: key, child: child);

  final Rect targetRect;
  final Alignment targetAnchor;
  final Alignment childAnchor;
  final Size childSize;

  @override
  void applyParentData(RenderObject renderObject) {
    assert(renderObject.parentData is StackParentData);
    bool needsLayout = false;
    final StackParentData parentData =
        renderObject.parentData! as StackParentData;
    final linkedOffset = targetAnchor.withinRect(targetRect) -
        childAnchor.withinRect(
          Rect.fromLTWH(
            0,
            0,
            childSize.width,
            childSize.height,
          ),
        );
    final left = linkedOffset.dx;
    final top = linkedOffset.dy;
    if (parentData.left != left) {
      parentData.left = left;
      needsLayout = true;
    }
    if (parentData.top != top) {
      parentData.top = top;
      needsLayout = true;
    }
    if (needsLayout) {
      final AbstractNode? targetParent = renderObject.parent;
      if (targetParent is RenderObject) targetParent.markNeedsLayout();
    }
  }

  @override
  Type get debugTypicalAncestorWidgetClass => Stack;
}

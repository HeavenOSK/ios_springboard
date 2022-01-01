enum HomeIconMode {
  waiting,
  tapped,
  showContextMenu,
  dragging,
  endDragging,
}

extension HomeIconModeX on HomeIconMode {
  bool get isWaiting => this == HomeIconMode.waiting;

  bool get isTapped => this == HomeIconMode.tapped;

  bool get isShowContextMenu => this == HomeIconMode.showContextMenu;

  bool get isDragging => this == HomeIconMode.dragging;

  bool get isEndDragging => this == HomeIconMode.endDragging;
}

extension HomeIconModeBehaviors on HomeIconMode {
  bool get avatarVisible {
    switch (this) {
      case HomeIconMode.waiting:
      case HomeIconMode.tapped:
        return false;
      case HomeIconMode.showContextMenu:
      case HomeIconMode.dragging:
      case HomeIconMode.endDragging:
        return true;
    }
  }

  bool get shouldExpand {
    switch (this) {
      case HomeIconMode.waiting:
      case HomeIconMode.tapped:
        return false;
      case HomeIconMode.showContextMenu:
      case HomeIconMode.dragging:
        return true;
      case HomeIconMode.endDragging:
        return false;
    }
  }
}

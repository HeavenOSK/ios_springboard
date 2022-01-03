enum SpringBoardMode {
  waiting,
  reorderable,
}

extension SpringBoardModeX on SpringBoardMode {
  bool get isReorderableMode => this == SpringBoardMode.reorderable;
}

Future<void> sleep({
  required int milliseconds,
}) =>
    Future<void>.delayed(
      Duration(
        milliseconds: milliseconds,
      ),
    );

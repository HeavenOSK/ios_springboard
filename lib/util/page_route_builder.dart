import 'package:flutter/material.dart';

class PageRouteBuilder {
  static MaterialPageRoute<T> buildMaterialRoute<T>({
    required WidgetBuilder builder,
    String? name,
    bool fullscreenDialog = false,
  }) {
    return MaterialPageRoute<T>(
      builder: builder,
      settings: RouteSettings(name: name),
      fullscreenDialog: fullscreenDialog,
    );
  }
}

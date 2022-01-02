import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final navigatorKey = Provider(
  (_) => GlobalKey<NavigatorState>(),
);

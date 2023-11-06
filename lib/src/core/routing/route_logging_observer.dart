import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class RouteLoggingObserver extends AutoRouterObserver {
  final logger = Logger();
  final stack = <Route>[];
  String get fullPath => stack.map((r) => r.data?.path ?? 'null').join('/');

  @override
  void didPush(Route route, Route? previousRoute) {
    stack.add(route);
    logger.d('Previous route: ${previousRoute?.data?.path ?? 'null'}');
    logger.d('New route pushed: $fullPath');
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    stack.remove(route);
    logger.d('New route pushed: $fullPath');
  }

  // only override to observer tab routes
  @override
  void didInitTabRoute(TabPageRoute route, TabPageRoute? previousRoute) {
    logger.d('Tab route visited: ${route.name}');
  }

  @override
  void didChangeTabRoute(TabPageRoute route, TabPageRoute previousRoute) {
    logger.d('Tab route re-visited: ${route.name}');
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:clean_auth/src/core/routing/app_router.dart';
import 'package:clean_auth/src/core/routing/route_logging_observer.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  App({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Boilerplate App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerDelegate: AutoRouterDelegate(
        _appRouter,
        navigatorObservers: () => [RouteLoggingObserver()],
      ),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

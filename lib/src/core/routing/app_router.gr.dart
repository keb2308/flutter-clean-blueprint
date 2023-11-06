// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    ApplicationWrapper.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppWrapper(),
      );
    },
    SignInRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SignUpPage(),
      );
    },
    Page1Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Feature1Page(),
      );
    },
    AppBarAuth.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AppBarAuthorized(),
      );
    },
    ProfileRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ProfilePage(),
      );
    },
    Page2Route.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const Feature2Page(),
      );
    },
  };
}

/// generated route for
/// [AppWrapper]
class ApplicationWrapper extends PageRouteInfo<void> {
  const ApplicationWrapper({List<PageRouteInfo>? children})
      : super(
          ApplicationWrapper.name,
          initialChildren: children,
        );

  static const String name = 'ApplicationWrapper';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute({List<PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<void> {
  const SignUpRoute({List<PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Feature1Page]
class Page1Route extends PageRouteInfo<void> {
  const Page1Route({List<PageRouteInfo>? children})
      : super(
          Page1Route.name,
          initialChildren: children,
        );

  static const String name = 'Page1Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AppBarAuthorized]
class AppBarAuth extends PageRouteInfo<void> {
  const AppBarAuth({List<PageRouteInfo>? children})
      : super(
          AppBarAuth.name,
          initialChildren: children,
        );

  static const String name = 'AppBarAuth';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [Feature2Page]
class Page2Route extends PageRouteInfo<void> {
  const Page2Route({List<PageRouteInfo>? children})
      : super(
          Page2Route.name,
          initialChildren: children,
        );

  static const String name = 'Page2Route';

  static const PageInfo<void> page = PageInfo<void>(name);
}

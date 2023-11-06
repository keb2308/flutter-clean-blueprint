import 'package:auto_route/auto_route.dart';
import 'package:clean_auth/src/core/app_wrapper.dart';
import 'package:clean_auth/src/presentation/auth/sign_in_page.dart';
import 'package:clean_auth/src/presentation/auth/sign_up_page.dart';
import 'package:clean_auth/src/presentation/feature_1/page1.dart';
import 'package:clean_auth/src/presentation/feature_2/page2.dart';
import 'package:clean_auth/src/presentation/profile/profile_page.dart';
import 'package:clean_auth/src/presentation/shared/app_bar_authorized.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          page: ApplicationWrapper.page,
          initial: true,
          children: [
            AutoRoute(
              path: 'login',
              maintainState: false,
              page: SignInRoute.page,
            ),
            AutoRoute(
              path: 'register',
              maintainState: false,
              page: SignUpRoute.page,
            ),
            AutoRoute(
              page: AppBarAuth.page,
              children: [
                AutoRoute(
                  maintainState: false,
                  path: 'page1',
                  page: Page1Route.page,
                ),
                AutoRoute(
                  maintainState: false,
                  path: 'page2',
                  page: Page2Route.page,
                ),
                AutoRoute(
                  maintainState: false,
                  path: 'profile',
                  page: ProfileRoute.page,
                ),
              ],
            ),
          ],
        ),
      ];
}

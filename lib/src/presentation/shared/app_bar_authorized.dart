import 'package:auto_route/auto_route.dart';
import 'package:clean_auth/src/core/routing/app_router.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'AppBarAuth')
class AppBarAuthorized extends StatelessWidget {
  const AppBarAuthorized({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        Page1Route(),
        Page2Route(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return BottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Page1',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.streetview),
              label: 'Page2',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        );
      },
    );
  }
}

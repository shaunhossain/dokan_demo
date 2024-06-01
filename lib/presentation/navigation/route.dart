
import 'package:dokan_demo/presentation/navigation/page_name.dart';
import 'package:dokan_demo/presentation/ui/pages/auth/login/login_page.dart';
import 'package:dokan_demo/presentation/ui/pages/auth/registration/registration_page.dart';
import 'package:dokan_demo/presentation/ui/pages/cart/cart_page.dart';
import 'package:dokan_demo/presentation/ui/pages/category/category_page.dart';
import 'package:dokan_demo/presentation/ui/pages/home/home_page.dart';
import 'package:dokan_demo/presentation/ui/pages/main_page.dart';
import 'package:dokan_demo/presentation/ui/pages/profile/profile_page.dart';
import 'package:dokan_demo/presentation/ui/pages/search/search_page.dart';
import 'package:dokan_demo/presentation/ui/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorHomeKey =
GlobalKey<NavigatorState>(debugLabel: 'shellHome');
final _shellNavigatorProfileKey =
GlobalKey<NavigatorState>(debugLabel: 'shellProfile');
final _shellNavigatorCategoryKey =
GlobalKey<NavigatorState>(debugLabel: 'shellCategory');
final _shellNavigatorCartKey =
GlobalKey<NavigatorState>(debugLabel: 'shellCart');
final _shellNavigatorSearchKey =
GlobalKey<NavigatorState>(debugLabel: 'shellSearch');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: PagesName.homePage.path,
  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainPage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          navigatorKey: _shellNavigatorHomeKey,
          initialLocation: PagesName.homePage.path,
          routes: [
            GoRoute(
              parentNavigatorKey: _shellNavigatorHomeKey,
              path: PagesName.homePage.path,
              builder: (BuildContext context, GoRouterState state) {
                return const HomePage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorCategoryKey,
          initialLocation: PagesName.categoryPage.path,
          routes: [
            GoRoute(
              parentNavigatorKey: _shellNavigatorCategoryKey,
              path: PagesName.categoryPage.path,
              builder: (BuildContext context, GoRouterState state) {
                return const CategoryPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorSearchKey,
          initialLocation: PagesName.searchPage.path,
          routes: [
            GoRoute(
              parentNavigatorKey: _shellNavigatorSearchKey,
              path: PagesName.searchPage.path,
              builder: (BuildContext context, GoRouterState state) {
                return const SearchPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorCartKey,
          initialLocation: PagesName.cartPage.path,
          routes: [
            GoRoute(
              parentNavigatorKey: _shellNavigatorCartKey,
              path: PagesName.cartPage.path,
              builder: (BuildContext context, GoRouterState state) {
                return const CartPage();
              },
            ),
          ],
        ),
        StatefulShellBranch(
          navigatorKey: _shellNavigatorProfileKey,
          initialLocation: PagesName.profilePage.path,
          routes: [
            GoRoute(
              parentNavigatorKey: _shellNavigatorProfileKey,
              path: PagesName.profilePage.path,
              builder: (BuildContext context, GoRouterState state) {
                return const ProfilePage();
              },
            ),
          ],
        ),
      ],
    ),

    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: PagesName.splashPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: PagesName.loginPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: PagesName.registrationPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const RegistrationPage();
      },
    ),
  ],
);

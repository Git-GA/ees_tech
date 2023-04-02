import 'package:ees_tech/controllers/main.dart';
import 'package:ees_tech/pages/first_layout_pages/courses_page.dart';
import 'package:ees_tech/pages/first_layout_pages/homepage.dart';
// import 'package:ees_tech/pages/homepage.dart';
import 'package:ees_tech/pages/first_layout_pages/profile_page.dart';
import 'package:ees_tech/pages/second_layout_pages/all_favorites_list.dart';
import 'package:ees_tech/pages/second_layout_pages/all_important_people.dart';
import 'package:ees_tech/pages/second_layout_pages/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'i18n/en_US/strings.g.dart';

final _controller = MainController();
final _rootNabigationKey = GlobalKey<NavigatorState>();
final _shellNabigationKey = GlobalKey<NavigatorState>();

// Создаем экземпляр GoRouter с ShellRoute и GoRoute
final router = GoRouter(
  navigatorKey: _rootNabigationKey,
  initialLocation: '/home',
  routes: [
    ShellRoute(
      navigatorKey: _shellNabigationKey,
      // ShellRoute показывает UI-оболочку вокруг соответствующего дочернего маршрута
      builder: (context, state, child) {
        // UI-оболочка - это Scaffold с NavigationBar
        return Obx(() => Scaffold(
              body: child,
              bottomNavigationBar: NavigationBar(
                  selectedIndex: _controller.page(),
                  // Используем tabs для создания NavigationBarDestination
                  destinations: [
                    NavigationDestination(
                      selectedIcon: Icon(Icons.home),
                      icon: Icon(Icons.home_outlined),
                      label: t.navbar.homepage,
                    ),
                    NavigationDestination(
                      selectedIcon: Icon(Icons.library_books),
                      icon: Icon(Icons.library_books_outlined),
                      label: t.navbar.courses,
                    ),
                    NavigationDestination(
                      selectedIcon: Icon(Icons.person_2),
                      icon: Icon(Icons.person_2_outlined),
                      label: t.navbar.profile,
                    )
                  ],
                  // Используем context.go для перехода к нужному маршруту при нажатии на вкладку
                  onDestinationSelected: (index) {
                    _controller.page(index);
                    return context.go(['/home', '/courses', '/profile'][index]);
                  }),
            ));
      },
      // Вложенные маршруты для каждой вкладки
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) =>
              NoTransitionPage<void>(key: state.pageKey, child: HomePage()),
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNabigationKey,
              path: "allFavorites",
              builder: (context, state) => AllFavorites(),
            ),
            GoRoute(
              parentNavigatorKey: _rootNabigationKey,
              path: "allImportantPeople",
              builder: (context, state) => AllImportantPeople(),
            ),
          ],
        ),
        GoRoute(
          path: '/courses',
          pageBuilder: (context, state) => NoTransitionPage<void>(
            key: state.pageKey,
            child: CoursesPage(),
          ),
        ),
        GoRoute(
          path: '/profile',
          pageBuilder: (context, state) => NoTransitionPage<void>(
            key: state.pageKey,
            child: ProfilePage(),
          ),
          routes: [
            GoRoute(
              parentNavigatorKey: _rootNabigationKey,
              path: "settings",
              builder: (context, state) => SettingsPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

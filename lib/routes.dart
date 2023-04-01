import 'package:ees_tech/controllers/main.dart';
import 'package:ees_tech/pages/homepage.dart';
import 'package:ees_tech/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

import 'i18n/en_US/strings.g.dart';

final _controller = MainController();

// Создаем экземпляр GoRouter с ShellRoute и GoRoute
final router = GoRouter(
  initialLocation: '/home',
  routes: [
    ShellRoute(
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
                      selectedIcon: Icon(Icons.person_2),
                      icon: Icon(Icons.person_2_outlined),
                      label: t.navbar.profile,
                    )
                  ],
                  // Используем context.go для перехода к нужному маршруту при нажатии на вкладку
                  onDestinationSelected: (index) {
                    _controller.page(index);
                    return context.go(['/home', '/profile'][index]);
                  }),
            ));
      },
      // Вложенные маршруты для каждой вкладки
      routes: [
        GoRoute(
          path: '/home',
          pageBuilder: (context, state) =>
              NoTransitionPage<void>(key: state.pageKey, child: HomePage()),
        ),
        GoRoute(
          path: '/courses',
          pageBuilder: (context, state) => NoTransitionPage<void>(
            key: state.pageKey,
            child: Scaffold(),
          ),
        ),
        GoRoute(
          path: '/profile',
          pageBuilder: (context, state) => NoTransitionPage<void>(
            key: state.pageKey,
            child: ProfilePage(),
          ),
        ),
      ],
    ),
  ],
);

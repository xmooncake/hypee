import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:hypee/features/home/home.screen.dart';

class AppRouter {
  AppRouter() {
    _router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: kDebugMode,
      routes: [
        GoRoute(
          path: '/',
          redirect: (context, state) => kLogin,
        ),
        GoRoute(
          path: kIntroduction,
        ),
        GoRoute(
          path: kLogin,
        ),
        GoRoute(
          path: kRegister,
        ),
        ShellRoute(
          navigatorKey: _shellNavigatorKey,
          builder: (context, state, child) => const HomeScreen(),
          routes: [
            GoRoute(
              path: kDashboard,
            ),
            GoRoute(
              path: kSearch,
            ),
            GoRoute(
              path: kProfile,
            ),
          ],
        ),
      ],
    );
  }

  late final GoRouter _router;
  GoRouter get router => _router;

  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'root');
  final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'shell');

  static const String kIntroduction = '/introduction';
  static const String kLogin = '/login';
  static const String kRegister = '/register';

  static const String kHome = '/home';

  // Shell routes
  static const String kDashboard = '/dashboard';
  static const String kSearch = '/search';
  static const String kProfile = '/profile';
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:hypee/features/login/login.screen.dart';
import 'package:hypee/features/login/register.screen.dart';

class AppRouter {
  AppRouter() {
    _router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: kDebugMode,
      initialLocation: kLogin,
      routes: [
        // GoRoute(
        //   path: '/',
        // ),
        GoRoute(
          path: kLogin,
          builder: (context, state) => const LoginScreen(),
          routes: [
            GoRoute(
              path: 'register',
              builder: (context, state) => const RegisterScreen(),
            ),
          ],
        ),
        // ShellRoute(
        //   navigatorKey: _shellNavigatorKey,
        //   builder: (context, state, child) => const HomeScreen(),
        //   routes: const [],
        // ),
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
  static const String kRegister = '/login/register';

  static const String kHome = '/home';

  // Shell routes
  static const String kDashboard = '/dashboard';
  static const String kSearch = '/search';
  static const String kSell = '/sell';
  static const String kInbox = '/inbox';
  static const String kProfile = '/profile';
}

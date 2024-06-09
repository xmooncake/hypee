import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:hypee/features/authentication/authentication.screen.dart';
import 'package:hypee/features/authentication/views/introduction.view.dart';
import 'package:hypee/features/authentication/views/login.view.dart';
import 'package:hypee/features/authentication/views/register.view.dart';
import 'package:hypee/features/dashboard/dashboard.view.dart';
import 'package:hypee/features/home/home.screen.dart';

class AppRouter {
  AppRouter({
    String initialLocation = kIntroduction,
  }) {
    _router = GoRouter(
      navigatorKey: _rootNavigatorKey,
      debugLogDiagnostics: kDebugMode,
      initialLocation: kIntroduction,
      routes: [
        GoRoute(
          path: '/',
          redirect: (context, state) => initialLocation,
        ),
        ShellRoute(
          builder: (context, state, child) => AuthenticationScreen(
            child: child,
          ),
          routes: [
            GoRoute(
              path: kIntroduction,
              builder: (context, state) => const IntroductionView(),
              routes: [
                GoRoute(
                  path: 'login',
                  builder: (context, state) => const LoginView(),
                ),
                GoRoute(
                  path: 'register',
                  builder: (context, state) => const RegisterView(),
                ),
              ],
            ),
          ],
        ),
        ShellRoute(
          navigatorKey: homeNavigatorKey,
          builder: (context, state, child) => const HomeScreen(),
          routes: [
            GoRoute(
              path: kDashboard,
              builder: (context, state) => const DashboardView(),
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

  final GlobalKey<NavigatorState> homeNavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'home');

  // Authentication routes
  static const String kIntroduction = '/introduction';
  static const String kLogin = '/login';
  static const String kRegister = '/register';

  // Home shell routes
  static const String kDashboard = '/dashboard';
  static const String kSearch = '/search';
  static const String kSell = '/sell';
  static const String kInbox = '/inbox';
  static const String kProfile = '/profile';
}

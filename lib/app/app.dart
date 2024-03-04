import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:hypee/app/bloc/app_bloc.dart';
import 'package:hypee/features/home/home.screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: MaterialApp.router(
        title: 'Hypee',
        routerConfig: GoRouter(
          routes: [
            GoRoute(
              path: '/',
              pageBuilder: (context, state) => const MaterialPage(
                child: HomeScreen(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hypee/config/constants.dart';
import 'package:hypee/features/app/bloc/app_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: Constants.appTheme,
      routerConfig: context.read<AppBloc>().router,
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:hypee/app/bloc/app_bloc.dart';
import 'package:hypee/features/config/constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppBloc(),
      child: MaterialApp.router(
        theme: Constants.appTheme,
        routerConfig: context.read<AppBloc>().router,
      ),
    );
  }
}

// ignore_for_file: avoid_classes_with_only_static_members

import 'package:get_it/get_it.dart';
import 'package:hypee/features/app/bloc/app_bloc.dart';
import 'package:hypee/features/app/router.dart';

class AppDependencies {
  static void register() {
    final getIt = GetIt.instance;

    if (!getIt.isRegistered<AppBloc>()) {
      getIt.registerSingleton<AppBloc>(AppBloc());
    }

    if (!getIt.isRegistered<AppRouter>()) {
      getIt.registerSingleton<AppRouter>(AppRouter());
    }
  }
}

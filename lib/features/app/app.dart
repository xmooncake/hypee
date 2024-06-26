import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';

import 'package:hypee/config/constants.dart';
import 'package:hypee/services/dependencies/app_dependencies.dart';
import 'package:hypee/features/app/router.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    AppDependencies.register();

    return MaterialApp.router(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: Constants.appTheme,
      routerConfig: GetIt.I<AppRouter>().router,
    );
  }
}

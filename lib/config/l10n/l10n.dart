import 'package:flutter/widgets.dart';
import 'package:hypee/config/l10n/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}

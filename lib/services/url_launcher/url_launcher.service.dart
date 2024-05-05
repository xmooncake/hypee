// ignore_for_file: avoid_classes_with_only_static_members

import 'package:url_launcher/url_launcher.dart';

class UrlLauncherService {
  static Future<void> open(
    String url, {
    LaunchMode mode = LaunchMode.externalApplication,
  }) async {
    await launchUrl(
      Uri.parse(url),
      mode: mode,
    );
  }
}

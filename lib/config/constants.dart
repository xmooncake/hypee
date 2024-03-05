// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class Constants {
  static const baseUrl = '';

  static ThemeData get appTheme => ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(),
      );
}

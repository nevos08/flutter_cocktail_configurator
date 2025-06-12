import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mib33_webframeworks_prototyp_2/core/theme/colors.dart';
import 'color_scheme.dart';

ThemeData theme = ThemeData(
  colorScheme: kColorScheme,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 233, 202, 159),
      foregroundColor: Colors.black,
    ),
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      textStyle: GoogleFonts.lexend().copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
  textTheme: const TextTheme().copyWith(
    bodySmall: GoogleFonts.lexend(),
    bodyMedium: GoogleFonts.lexend(color: Colors.black),
    bodyLarge: GoogleFonts.lexend(),
    titleSmall: GoogleFonts.lexend(),
    titleMedium: GoogleFonts.lexend(),
    titleLarge: GoogleFonts.lexend(),
    headlineSmall: GoogleFonts.lexend().copyWith(fontWeight: FontWeight.w600),
    headlineMedium: GoogleFonts.lexend().copyWith(fontWeight: FontWeight.w600),
    headlineLarge: GoogleFonts.lexend().copyWith(fontWeight: FontWeight.w600),
  ),
  chipTheme: const ChipThemeData()
      .copyWith(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(64))),
  cardTheme: const CardTheme().copyWith(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: AppColors.card,
      elevation: 0),
);

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class AppThemeData {
  static ThemeData get themeData => ThemeData(
        brightness: Brightness.dark,
        primaryColor: AppColors.primary,
        scaffoldBackgroundColor: AppColors.background,
        splashColor: AppColors.transparent,
        focusColor: AppColors.transparent,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.secondary,
          foregroundColor: AppColors.primary,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: AppColors.primary,
            statusBarIconBrightness: Brightness.light,
            statusBarBrightness: Brightness.light,
          ),
        ),
        datePickerTheme: DatePickerThemeData(
          backgroundColor: AppColors.white,
          shadowColor: AppColors.grey,
          inputDecorationTheme: InputDecorationTheme(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        dialogTheme: const DialogTheme(
          backgroundColor: AppColors.transparent,
        ),
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: AppColors.primary,
          selectionColor: AppColors.primary.withOpacity(0.4),
        ),
        dividerTheme: const DividerThemeData(
          color: AppColors.primary,
          thickness: 0.4,
        ),
      );
}

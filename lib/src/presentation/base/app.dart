import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/l10n/app_localizations.dart';
import 'package:teeth_align_app/src/presentation/base/app_theme_data.dart';
import 'package:teeth_align_app/src/presentation/base/globals.dart';
import 'package:teeth_align_app/src/router/app_router.dart';

final router = AppRouter();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, __, ___) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        routerConfig: router.config(
          navigatorObservers: () => [
            ChuckerFlutter.navigatorObserver,
          ],
        ),
        theme: AppThemeData.themeData,
        scaffoldMessengerKey: snackbarKey,
        locale: const Locale('en'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
      ),
    );
  }
}
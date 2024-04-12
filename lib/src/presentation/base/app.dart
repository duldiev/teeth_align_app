import 'package:chucker_flutter/chucker_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:stream_chat_flutter/stream_chat_flutter.dart';
import 'package:teeth_align_app/l10n/app_localizations.dart';
import 'package:teeth_align_app/main.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:teeth_align_app/src/presentation/base/app_theme_data.dart';
import 'package:teeth_align_app/src/presentation/base/globals.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/admin_bloc/admin_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/doctor_bloc/doctor_bloc.dart';
import 'package:teeth_align_app/src/router/app_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = getIt<AppRouter>();
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
        builder: (context, child) => MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => getIt<SignInBloc>()),
            BlocProvider(create: (_) => getIt<DoctorBloc>()),
            BlocProvider(create: (_) => getIt<AdminBloc>()),
          ],
          child: StreamChat(
            client: client,
            child: child,
          ),
        ),
      ),
    );
  }
}

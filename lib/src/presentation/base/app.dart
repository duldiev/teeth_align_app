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
import 'package:teeth_align_app/src/presentation/calendar/blocs/calendar_bloc/calendar_bloc.dart';
import 'package:teeth_align_app/src/presentation/calendar/blocs/calendar_date_bloc/calendar_date_bloc.dart';
import 'package:teeth_align_app/src/presentation/calendar/helpers/date_helper.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/admin_bloc/admin_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/doctor_bloc/doctor_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/mentor_bloc/mentor_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/patient_bloc/patient_bloc.dart';
import 'package:teeth_align_app/src/presentation/social/blocs/leaderboard_bloc/leaderboard_bloc.dart';
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
        locale: const Locale('ru'),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(create: (_) => getIt<SignInBloc>()),
              BlocProvider(create: (_) => getIt<AdminBloc>()),
              BlocProvider(create: (_) => getIt<DoctorBloc>()),
              BlocProvider(create: (_) => getIt<MentorBloc>()),
              BlocProvider(create: (_) => getIt<PatientBloc>()),
              BlocProvider(create: (_) => getIt<LeaderboardBloc>()),
              BlocProvider(create: (_) => getIt<CalendarDateBloc>()),
              BlocProvider(
                create: (_) => getIt<CalendarBloc>()
                  ..add(GetEvents(
                    DateHelper.currentStartMonth,
                    DateHelper.nextStartMonth,
                  )),
              ),
            ],
            child: StreamChat(
              client: client,
              child: child,
            ),
          );
        },
      ),
    );
  }
}

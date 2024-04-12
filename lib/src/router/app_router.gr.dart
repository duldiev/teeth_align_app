// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i22;
import 'package:flutter/material.dart' as _i23;
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as _i24;
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart' as _i25;
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart' as _i26;
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart' as _i27;
import 'package:teeth_align_app/src/presentation/account/screens/account_screen.dart'
    as _i1;
import 'package:teeth_align_app/src/presentation/account/screens/doctor_profile_screen.dart'
    as _i7;
import 'package:teeth_align_app/src/presentation/account/screens/mentor_profile_screen.dart'
    as _i9;
import 'package:teeth_align_app/src/presentation/account/screens/patient_profile_screen.dart'
    as _i13;
import 'package:teeth_align_app/src/presentation/account/screens/profile_screen.dart'
    as _i14;
import 'package:teeth_align_app/src/presentation/auth/screens/sign_in_screen.dart'
    as _i16;
import 'package:teeth_align_app/src/presentation/auth/screens/sign_up_screen.dart'
    as _i17;
import 'package:teeth_align_app/src/presentation/auth/screens/welcome_screen.dart'
    as _i21;
import 'package:teeth_align_app/src/presentation/base/splash_screen.dart'
    as _i20;
import 'package:teeth_align_app/src/presentation/calendar/screens/calendar_screen.dart'
    as _i3;
import 'package:teeth_align_app/src/presentation/chat/screens/chat_list_screen.dart'
    as _i4;
import 'package:teeth_align_app/src/presentation/chat/screens/chat_screen.dart'
    as _i5;
import 'package:teeth_align_app/src/presentation/home/screens/admin_home_screen.dart'
    as _i2;
import 'package:teeth_align_app/src/presentation/home/screens/doctor_home_screen.dart'
    as _i6;
import 'package:teeth_align_app/src/presentation/home/screens/mentor_home_screen.dart'
    as _i8;
import 'package:teeth_align_app/src/presentation/home/screens/patient_home_screen.dart'
    as _i12;
import 'package:teeth_align_app/src/presentation/notifications/screens/notification_screen.dart'
    as _i11;
import 'package:teeth_align_app/src/presentation/report/screens/report_screen.dart'
    as _i15;
import 'package:teeth_align_app/src/presentation/social/screens/single_post_screen.dart'
    as _i18;
import 'package:teeth_align_app/src/presentation/social/screens/social_screen.dart'
    as _i19;
import 'package:teeth_align_app/src/router/nav_router.dart' as _i10;

abstract class $AppRouter extends _i22.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i22.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    AdminHomeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AdminHomeScreen(),
      );
    },
    CalendarRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CalendarScreen(),
      );
    },
    ChatListRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChatListScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ChatScreen(
          key: args.key,
          channel: args.channel,
        ),
      );
    },
    DoctorHomeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DoctorHomeScreen(),
      );
    },
    DoctorProfileRoute.name: (routeData) {
      final args = routeData.argsAs<DoctorProfileRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.DoctorProfileScreen(
          key: args.key,
          doctor: args.doctor,
        ),
      );
    },
    MentorHomeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.MentorHomeScreen(),
      );
    },
    MentorProfileRoute.name: (routeData) {
      final args = routeData.argsAs<MentorProfileRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.MentorProfileScreen(
          key: args.key,
          mentor: args.mentor,
        ),
      );
    },
    NavRouter.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.NavRouter(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.NotificationScreen(),
      );
    },
    PatientHomeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.PatientHomeScreen(),
      );
    },
    PatientProfileRoute.name: (routeData) {
      final args = routeData.argsAs<PatientProfileRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.PatientProfileScreen(
          key: args.key,
          patient: args.patient,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.ProfileScreen(),
      );
    },
    ReportRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.ReportScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SignUpScreen(),
      );
    },
    SinglePostRoute.name: (routeData) {
      final args = routeData.argsAs<SinglePostRouteArgs>();
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i18.SinglePostScreen(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    SocialRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.SocialScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SplashScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i22.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i22.PageRouteInfo<void> {
  const AccountRoute({List<_i22.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AdminHomeScreen]
class AdminHomeRoute extends _i22.PageRouteInfo<void> {
  const AdminHomeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          AdminHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminHomeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CalendarScreen]
class CalendarRoute extends _i22.PageRouteInfo<void> {
  const CalendarRoute({List<_i22.PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChatListScreen]
class ChatListRoute extends _i22.PageRouteInfo<void> {
  const ChatListRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ChatListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatListRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ChatScreen]
class ChatRoute extends _i22.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i23.Key? key,
    required _i24.Channel channel,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            channel: channel,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i22.PageInfo<ChatRouteArgs> page =
      _i22.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.channel,
  });

  final _i23.Key? key;

  final _i24.Channel channel;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, channel: $channel}';
  }
}

/// generated route for
/// [_i6.DoctorHomeScreen]
class DoctorHomeRoute extends _i22.PageRouteInfo<void> {
  const DoctorHomeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          DoctorHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorHomeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i7.DoctorProfileScreen]
class DoctorProfileRoute extends _i22.PageRouteInfo<DoctorProfileRouteArgs> {
  DoctorProfileRoute({
    _i23.Key? key,
    required _i25.DoctorEntity doctor,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          DoctorProfileRoute.name,
          args: DoctorProfileRouteArgs(
            key: key,
            doctor: doctor,
          ),
          initialChildren: children,
        );

  static const String name = 'DoctorProfileRoute';

  static const _i22.PageInfo<DoctorProfileRouteArgs> page =
      _i22.PageInfo<DoctorProfileRouteArgs>(name);
}

class DoctorProfileRouteArgs {
  const DoctorProfileRouteArgs({
    this.key,
    required this.doctor,
  });

  final _i23.Key? key;

  final _i25.DoctorEntity doctor;

  @override
  String toString() {
    return 'DoctorProfileRouteArgs{key: $key, doctor: $doctor}';
  }
}

/// generated route for
/// [_i8.MentorHomeScreen]
class MentorHomeRoute extends _i22.PageRouteInfo<void> {
  const MentorHomeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          MentorHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MentorHomeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MentorProfileScreen]
class MentorProfileRoute extends _i22.PageRouteInfo<MentorProfileRouteArgs> {
  MentorProfileRoute({
    _i23.Key? key,
    required _i26.MentorEntity mentor,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          MentorProfileRoute.name,
          args: MentorProfileRouteArgs(
            key: key,
            mentor: mentor,
          ),
          initialChildren: children,
        );

  static const String name = 'MentorProfileRoute';

  static const _i22.PageInfo<MentorProfileRouteArgs> page =
      _i22.PageInfo<MentorProfileRouteArgs>(name);
}

class MentorProfileRouteArgs {
  const MentorProfileRouteArgs({
    this.key,
    required this.mentor,
  });

  final _i23.Key? key;

  final _i26.MentorEntity mentor;

  @override
  String toString() {
    return 'MentorProfileRouteArgs{key: $key, mentor: $mentor}';
  }
}

/// generated route for
/// [_i10.NavRouter]
class NavRouter extends _i22.PageRouteInfo<void> {
  const NavRouter({List<_i22.PageRouteInfo>? children})
      : super(
          NavRouter.name,
          initialChildren: children,
        );

  static const String name = 'NavRouter';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NotificationScreen]
class NotificationRoute extends _i22.PageRouteInfo<void> {
  const NotificationRoute({List<_i22.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i12.PatientHomeScreen]
class PatientHomeRoute extends _i22.PageRouteInfo<void> {
  const PatientHomeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          PatientHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientHomeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PatientProfileScreen]
class PatientProfileRoute extends _i22.PageRouteInfo<PatientProfileRouteArgs> {
  PatientProfileRoute({
    _i23.Key? key,
    required _i27.PatientEntity patient,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          PatientProfileRoute.name,
          args: PatientProfileRouteArgs(
            key: key,
            patient: patient,
          ),
          initialChildren: children,
        );

  static const String name = 'PatientProfileRoute';

  static const _i22.PageInfo<PatientProfileRouteArgs> page =
      _i22.PageInfo<PatientProfileRouteArgs>(name);
}

class PatientProfileRouteArgs {
  const PatientProfileRouteArgs({
    this.key,
    required this.patient,
  });

  final _i23.Key? key;

  final _i27.PatientEntity patient;

  @override
  String toString() {
    return 'PatientProfileRouteArgs{key: $key, patient: $patient}';
  }
}

/// generated route for
/// [_i14.ProfileScreen]
class ProfileRoute extends _i22.PageRouteInfo<void> {
  const ProfileRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i15.ReportScreen]
class ReportRoute extends _i22.PageRouteInfo<void> {
  const ReportRoute({List<_i22.PageRouteInfo>? children})
      : super(
          ReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SignInScreen]
class SignInRoute extends _i22.PageRouteInfo<void> {
  const SignInRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SignUpScreen]
class SignUpRoute extends _i22.PageRouteInfo<void> {
  const SignUpRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SinglePostScreen]
class SinglePostRoute extends _i22.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i23.Key? key,
    required int postId,
    List<_i22.PageRouteInfo>? children,
  }) : super(
          SinglePostRoute.name,
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
          initialChildren: children,
        );

  static const String name = 'SinglePostRoute';

  static const _i22.PageInfo<SinglePostRouteArgs> page =
      _i22.PageInfo<SinglePostRouteArgs>(name);
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i23.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i19.SocialScreen]
class SocialRoute extends _i22.PageRouteInfo<void> {
  const SocialRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SocialRoute.name,
          initialChildren: children,
        );

  static const String name = 'SocialRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SplashScreen]
class SplashRoute extends _i22.PageRouteInfo<void> {
  const SplashRoute({List<_i22.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

/// generated route for
/// [_i21.WelcomeScreen]
class WelcomeRoute extends _i22.PageRouteInfo<void> {
  const WelcomeRoute({List<_i22.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i22.PageInfo<void> page = _i22.PageInfo<void>(name);
}

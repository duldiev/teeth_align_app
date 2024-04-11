// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i19;
import 'package:flutter/material.dart' as _i20;
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as _i21;
import 'package:teeth_align_app/src/presentation/account/screens/account_screen.dart'
    as _i1;
import 'package:teeth_align_app/src/presentation/account/screens/profile_screen.dart'
    as _i11;
import 'package:teeth_align_app/src/presentation/auth/screens/sign_in_screen.dart'
    as _i13;
import 'package:teeth_align_app/src/presentation/auth/screens/sign_up_screen.dart'
    as _i14;
import 'package:teeth_align_app/src/presentation/auth/screens/welcome_screen.dart'
    as _i18;
import 'package:teeth_align_app/src/presentation/base/splash_screen.dart'
    as _i17;
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
    as _i7;
import 'package:teeth_align_app/src/presentation/home/screens/patient_home_screen.dart'
    as _i10;
import 'package:teeth_align_app/src/presentation/notifications/screens/notification_screen.dart'
    as _i9;
import 'package:teeth_align_app/src/presentation/report/screens/report_screen.dart'
    as _i12;
import 'package:teeth_align_app/src/presentation/social/screens/single_post_screen.dart'
    as _i15;
import 'package:teeth_align_app/src/presentation/social/screens/social_screen.dart'
    as _i16;
import 'package:teeth_align_app/src/router/nav_router.dart' as _i8;

abstract class $AppRouter extends _i19.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i19.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    AdminHomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AdminHomeScreen(),
      );
    },
    CalendarRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CalendarScreen(),
      );
    },
    ChatListRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ChatListScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.ChatScreen(
          key: args.key,
          channel: args.channel,
        ),
      );
    },
    DoctorHomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.DoctorHomeScreen(),
      );
    },
    MentorHomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MentorHomeScreen(),
      );
    },
    NavRouter.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.NavRouter(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.NotificationScreen(),
      );
    },
    PatientHomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.PatientHomeScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfileScreen(),
      );
    },
    ReportRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ReportScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.SignUpScreen(),
      );
    },
    SinglePostRoute.name: (routeData) {
      final args = routeData.argsAs<SinglePostRouteArgs>();
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i15.SinglePostScreen(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    SocialRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SocialScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SplashScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i19.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i19.PageRouteInfo<void> {
  const AccountRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AdminHomeScreen]
class AdminHomeRoute extends _i19.PageRouteInfo<void> {
  const AdminHomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          AdminHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminHomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CalendarScreen]
class CalendarRoute extends _i19.PageRouteInfo<void> {
  const CalendarRoute({List<_i19.PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i4.ChatListScreen]
class ChatListRoute extends _i19.PageRouteInfo<void> {
  const ChatListRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ChatListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatListRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ChatScreen]
class ChatRoute extends _i19.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i20.Key? key,
    required _i21.Channel channel,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            channel: channel,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i19.PageInfo<ChatRouteArgs> page =
      _i19.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.channel,
  });

  final _i20.Key? key;

  final _i21.Channel channel;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, channel: $channel}';
  }
}

/// generated route for
/// [_i6.DoctorHomeScreen]
class DoctorHomeRoute extends _i19.PageRouteInfo<void> {
  const DoctorHomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          DoctorHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorHomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MentorHomeScreen]
class MentorHomeRoute extends _i19.PageRouteInfo<void> {
  const MentorHomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          MentorHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MentorHomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i8.NavRouter]
class NavRouter extends _i19.PageRouteInfo<void> {
  const NavRouter({List<_i19.PageRouteInfo>? children})
      : super(
          NavRouter.name,
          initialChildren: children,
        );

  static const String name = 'NavRouter';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i9.NotificationScreen]
class NotificationRoute extends _i19.PageRouteInfo<void> {
  const NotificationRoute({List<_i19.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i10.PatientHomeScreen]
class PatientHomeRoute extends _i19.PageRouteInfo<void> {
  const PatientHomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          PatientHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientHomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ProfileScreen]
class ProfileRoute extends _i19.PageRouteInfo<void> {
  const ProfileRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ReportScreen]
class ReportRoute extends _i19.PageRouteInfo<void> {
  const ReportRoute({List<_i19.PageRouteInfo>? children})
      : super(
          ReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i13.SignInScreen]
class SignInRoute extends _i19.PageRouteInfo<void> {
  const SignInRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i14.SignUpScreen]
class SignUpRoute extends _i19.PageRouteInfo<void> {
  const SignUpRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SinglePostScreen]
class SinglePostRoute extends _i19.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i20.Key? key,
    required int postId,
    List<_i19.PageRouteInfo>? children,
  }) : super(
          SinglePostRoute.name,
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
          initialChildren: children,
        );

  static const String name = 'SinglePostRoute';

  static const _i19.PageInfo<SinglePostRouteArgs> page =
      _i19.PageInfo<SinglePostRouteArgs>(name);
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i20.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i16.SocialScreen]
class SocialRoute extends _i19.PageRouteInfo<void> {
  const SocialRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SocialRoute.name,
          initialChildren: children,
        );

  static const String name = 'SocialRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SplashScreen]
class SplashRoute extends _i19.PageRouteInfo<void> {
  const SplashRoute({List<_i19.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

/// generated route for
/// [_i18.WelcomeScreen]
class WelcomeRoute extends _i19.PageRouteInfo<void> {
  const WelcomeRoute({List<_i19.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i19.PageInfo<void> page = _i19.PageInfo<void>(name);
}

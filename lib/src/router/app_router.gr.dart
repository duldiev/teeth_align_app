// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i26;
import 'package:flutter/material.dart' as _i27;
import 'package:stream_chat_flutter/stream_chat_flutter.dart' as _i28;
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart' as _i29;
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart' as _i30;
import 'package:teeth_align_app/src/presentation/account/screens/account_screen.dart'
    as _i1;
import 'package:teeth_align_app/src/presentation/account/screens/aligner_settings_screen.dart'
    as _i3;
import 'package:teeth_align_app/src/presentation/account/screens/doctor_profile_screen.dart'
    as _i11;
import 'package:teeth_align_app/src/presentation/account/screens/mentor_profile_screen.dart'
    as _i13;
import 'package:teeth_align_app/src/presentation/account/screens/patient_profile_screen.dart'
    as _i17;
import 'package:teeth_align_app/src/presentation/account/screens/profile_screen.dart'
    as _i18;
import 'package:teeth_align_app/src/presentation/auth/screens/sign_in_screen.dart'
    as _i20;
import 'package:teeth_align_app/src/presentation/auth/screens/sign_up_screen.dart'
    as _i21;
import 'package:teeth_align_app/src/presentation/auth/screens/welcome_screen.dart'
    as _i25;
import 'package:teeth_align_app/src/presentation/base/splash_screen.dart'
    as _i24;
import 'package:teeth_align_app/src/presentation/calendar/screens/calendar_screen.dart'
    as _i4;
import 'package:teeth_align_app/src/presentation/chat/screens/chat_list_screen.dart'
    as _i6;
import 'package:teeth_align_app/src/presentation/chat/screens/chat_screen.dart'
    as _i7;
import 'package:teeth_align_app/src/presentation/home/screens/admin_home_screen.dart'
    as _i2;
import 'package:teeth_align_app/src/presentation/home/screens/doctor_home_screen.dart'
    as _i10;
import 'package:teeth_align_app/src/presentation/home/screens/mentor_home_screen.dart'
    as _i12;
import 'package:teeth_align_app/src/presentation/home/screens/patient_home_screen.dart'
    as _i16;
import 'package:teeth_align_app/src/presentation/notifications/screens/notification_screen.dart'
    as _i15;
import 'package:teeth_align_app/src/presentation/report/screens/camera_screen.dart'
    as _i5;
import 'package:teeth_align_app/src/presentation/report/screens/create_case_screen.dart'
    as _i8;
import 'package:teeth_align_app/src/presentation/report/screens/report_screen.dart'
    as _i19;
import 'package:teeth_align_app/src/presentation/social/screens/single_post_screen.dart'
    as _i22;
import 'package:teeth_align_app/src/presentation/social/screens/social_screen.dart'
    as _i23;
import 'package:teeth_align_app/src/router/nav_router.dart' as _i14;
import 'package:teeth_align_app/src/shared/web_view/default_web_view.dart'
    as _i9;

abstract class $AppRouter extends _i26.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i26.PageFactory> pagesMap = {
    AccountRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AccountScreen(),
      );
    },
    AdminHomeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AdminHomeScreen(),
      );
    },
    AlignerSettingsRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.AlignerSettingsScreen(),
      );
    },
    CalendarRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.CalendarScreen(),
      );
    },
    CameraRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.CameraScreen(),
      );
    },
    ChatListRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ChatListScreen(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.ChatScreen(
          key: args.key,
          channel: args.channel,
        ),
      );
    },
    CreateCaseRoute.name: (routeData) {
      final args = routeData.argsAs<CreateCaseRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i8.CreateCaseScreen(
          key: args.key,
          patientId: args.patientId,
        ),
      );
    },
    DefaultWebView.name: (routeData) {
      final args = routeData.argsAs<DefaultWebViewArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.DefaultWebView(
          key: args.key,
          url: args.url,
        ),
      );
    },
    DoctorHomeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.DoctorHomeScreen(),
      );
    },
    DoctorProfileRoute.name: (routeData) {
      final args = routeData.argsAs<DoctorProfileRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.DoctorProfileScreen(
          key: args.key,
          doctor: args.doctor,
        ),
      );
    },
    MentorHomeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.MentorHomeScreen(),
      );
    },
    MentorProfileRoute.name: (routeData) {
      final args = routeData.argsAs<MentorProfileRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.MentorProfileScreen(
          key: args.key,
          mentorId: args.mentorId,
        ),
      );
    },
    NavRouter.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.NavRouter(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.NotificationScreen(),
      );
    },
    PatientHomeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.PatientHomeScreen(),
      );
    },
    PatientProfileRoute.name: (routeData) {
      final args = routeData.argsAs<PatientProfileRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i17.PatientProfileScreen(
          key: args.key,
          patient: args.patient,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.ProfileScreen(),
      );
    },
    ReportRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.ReportScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.SignUpScreen(),
      );
    },
    SinglePostRoute.name: (routeData) {
      final args = routeData.argsAs<SinglePostRouteArgs>();
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i22.SinglePostScreen(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    SocialRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i23.SocialScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i24.SplashScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i26.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i25.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AccountScreen]
class AccountRoute extends _i26.PageRouteInfo<void> {
  const AccountRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'AccountRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AdminHomeScreen]
class AdminHomeRoute extends _i26.PageRouteInfo<void> {
  const AdminHomeRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AdminHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminHomeRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i3.AlignerSettingsScreen]
class AlignerSettingsRoute extends _i26.PageRouteInfo<void> {
  const AlignerSettingsRoute({List<_i26.PageRouteInfo>? children})
      : super(
          AlignerSettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AlignerSettingsRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i4.CalendarScreen]
class CalendarRoute extends _i26.PageRouteInfo<void> {
  const CalendarRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i5.CameraScreen]
class CameraRoute extends _i26.PageRouteInfo<void> {
  const CameraRoute({List<_i26.PageRouteInfo>? children})
      : super(
          CameraRoute.name,
          initialChildren: children,
        );

  static const String name = 'CameraRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i6.ChatListScreen]
class ChatListRoute extends _i26.PageRouteInfo<void> {
  const ChatListRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ChatListRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChatListRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i7.ChatScreen]
class ChatRoute extends _i26.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i27.Key? key,
    required _i28.Channel channel,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            channel: channel,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i26.PageInfo<ChatRouteArgs> page =
      _i26.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.channel,
  });

  final _i27.Key? key;

  final _i28.Channel channel;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, channel: $channel}';
  }
}

/// generated route for
/// [_i8.CreateCaseScreen]
class CreateCaseRoute extends _i26.PageRouteInfo<CreateCaseRouteArgs> {
  CreateCaseRoute({
    _i27.Key? key,
    required int patientId,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          CreateCaseRoute.name,
          args: CreateCaseRouteArgs(
            key: key,
            patientId: patientId,
          ),
          initialChildren: children,
        );

  static const String name = 'CreateCaseRoute';

  static const _i26.PageInfo<CreateCaseRouteArgs> page =
      _i26.PageInfo<CreateCaseRouteArgs>(name);
}

class CreateCaseRouteArgs {
  const CreateCaseRouteArgs({
    this.key,
    required this.patientId,
  });

  final _i27.Key? key;

  final int patientId;

  @override
  String toString() {
    return 'CreateCaseRouteArgs{key: $key, patientId: $patientId}';
  }
}

/// generated route for
/// [_i9.DefaultWebView]
class DefaultWebView extends _i26.PageRouteInfo<DefaultWebViewArgs> {
  DefaultWebView({
    _i27.Key? key,
    required String url,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          DefaultWebView.name,
          args: DefaultWebViewArgs(
            key: key,
            url: url,
          ),
          initialChildren: children,
        );

  static const String name = 'DefaultWebView';

  static const _i26.PageInfo<DefaultWebViewArgs> page =
      _i26.PageInfo<DefaultWebViewArgs>(name);
}

class DefaultWebViewArgs {
  const DefaultWebViewArgs({
    this.key,
    required this.url,
  });

  final _i27.Key? key;

  final String url;

  @override
  String toString() {
    return 'DefaultWebViewArgs{key: $key, url: $url}';
  }
}

/// generated route for
/// [_i10.DoctorHomeScreen]
class DoctorHomeRoute extends _i26.PageRouteInfo<void> {
  const DoctorHomeRoute({List<_i26.PageRouteInfo>? children})
      : super(
          DoctorHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorHomeRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i11.DoctorProfileScreen]
class DoctorProfileRoute extends _i26.PageRouteInfo<DoctorProfileRouteArgs> {
  DoctorProfileRoute({
    _i27.Key? key,
    required _i29.DoctorEntity doctor,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          DoctorProfileRoute.name,
          args: DoctorProfileRouteArgs(
            key: key,
            doctor: doctor,
          ),
          initialChildren: children,
        );

  static const String name = 'DoctorProfileRoute';

  static const _i26.PageInfo<DoctorProfileRouteArgs> page =
      _i26.PageInfo<DoctorProfileRouteArgs>(name);
}

class DoctorProfileRouteArgs {
  const DoctorProfileRouteArgs({
    this.key,
    required this.doctor,
  });

  final _i27.Key? key;

  final _i29.DoctorEntity doctor;

  @override
  String toString() {
    return 'DoctorProfileRouteArgs{key: $key, doctor: $doctor}';
  }
}

/// generated route for
/// [_i12.MentorHomeScreen]
class MentorHomeRoute extends _i26.PageRouteInfo<void> {
  const MentorHomeRoute({List<_i26.PageRouteInfo>? children})
      : super(
          MentorHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'MentorHomeRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i13.MentorProfileScreen]
class MentorProfileRoute extends _i26.PageRouteInfo<MentorProfileRouteArgs> {
  MentorProfileRoute({
    _i27.Key? key,
    required int mentorId,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          MentorProfileRoute.name,
          args: MentorProfileRouteArgs(
            key: key,
            mentorId: mentorId,
          ),
          initialChildren: children,
        );

  static const String name = 'MentorProfileRoute';

  static const _i26.PageInfo<MentorProfileRouteArgs> page =
      _i26.PageInfo<MentorProfileRouteArgs>(name);
}

class MentorProfileRouteArgs {
  const MentorProfileRouteArgs({
    this.key,
    required this.mentorId,
  });

  final _i27.Key? key;

  final int mentorId;

  @override
  String toString() {
    return 'MentorProfileRouteArgs{key: $key, mentorId: $mentorId}';
  }
}

/// generated route for
/// [_i14.NavRouter]
class NavRouter extends _i26.PageRouteInfo<void> {
  const NavRouter({List<_i26.PageRouteInfo>? children})
      : super(
          NavRouter.name,
          initialChildren: children,
        );

  static const String name = 'NavRouter';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i15.NotificationScreen]
class NotificationRoute extends _i26.PageRouteInfo<void> {
  const NotificationRoute({List<_i26.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i16.PatientHomeScreen]
class PatientHomeRoute extends _i26.PageRouteInfo<void> {
  const PatientHomeRoute({List<_i26.PageRouteInfo>? children})
      : super(
          PatientHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PatientHomeRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i17.PatientProfileScreen]
class PatientProfileRoute extends _i26.PageRouteInfo<PatientProfileRouteArgs> {
  PatientProfileRoute({
    _i27.Key? key,
    required _i30.PatientEntity patient,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          PatientProfileRoute.name,
          args: PatientProfileRouteArgs(
            key: key,
            patient: patient,
          ),
          initialChildren: children,
        );

  static const String name = 'PatientProfileRoute';

  static const _i26.PageInfo<PatientProfileRouteArgs> page =
      _i26.PageInfo<PatientProfileRouteArgs>(name);
}

class PatientProfileRouteArgs {
  const PatientProfileRouteArgs({
    this.key,
    required this.patient,
  });

  final _i27.Key? key;

  final _i30.PatientEntity patient;

  @override
  String toString() {
    return 'PatientProfileRouteArgs{key: $key, patient: $patient}';
  }
}

/// generated route for
/// [_i18.ProfileScreen]
class ProfileRoute extends _i26.PageRouteInfo<void> {
  const ProfileRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i19.ReportScreen]
class ReportRoute extends _i26.PageRouteInfo<void> {
  const ReportRoute({List<_i26.PageRouteInfo>? children})
      : super(
          ReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i20.SignInScreen]
class SignInRoute extends _i26.PageRouteInfo<void> {
  const SignInRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i21.SignUpScreen]
class SignUpRoute extends _i26.PageRouteInfo<void> {
  const SignUpRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i22.SinglePostScreen]
class SinglePostRoute extends _i26.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i27.Key? key,
    required int postId,
    List<_i26.PageRouteInfo>? children,
  }) : super(
          SinglePostRoute.name,
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
          initialChildren: children,
        );

  static const String name = 'SinglePostRoute';

  static const _i26.PageInfo<SinglePostRouteArgs> page =
      _i26.PageInfo<SinglePostRouteArgs>(name);
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i27.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i23.SocialScreen]
class SocialRoute extends _i26.PageRouteInfo<void> {
  const SocialRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SocialRoute.name,
          initialChildren: children,
        );

  static const String name = 'SocialRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i24.SplashScreen]
class SplashRoute extends _i26.PageRouteInfo<void> {
  const SplashRoute({List<_i26.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

/// generated route for
/// [_i25.WelcomeScreen]
class WelcomeRoute extends _i26.PageRouteInfo<void> {
  const WelcomeRoute({List<_i26.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i26.PageInfo<void> page = _i26.PageInfo<void>(name);
}

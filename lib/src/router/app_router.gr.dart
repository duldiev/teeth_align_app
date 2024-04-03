// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:teeth_align_app/src/presentation/auth/screens/sign_in_screen.dart'
    as _i5;
import 'package:teeth_align_app/src/presentation/auth/screens/sign_up_screen.dart'
    as _i6;
import 'package:teeth_align_app/src/presentation/auth/screens/welcome_screen.dart'
    as _i10;
import 'package:teeth_align_app/src/presentation/base/splash_screen.dart'
    as _i9;
import 'package:teeth_align_app/src/presentation/calendar/screens/calendar_screen.dart'
    as _i1;
import 'package:teeth_align_app/src/presentation/home/screens/home_screen.dart'
    as _i2;
import 'package:teeth_align_app/src/presentation/notifications/screens/notification_screen.dart'
    as _i4;
import 'package:teeth_align_app/src/presentation/social/screens/single_post_screen.dart'
    as _i7;
import 'package:teeth_align_app/src/presentation/social/screens/social_screen.dart'
    as _i8;
import 'package:teeth_align_app/src/router/nav_router.dart' as _i3;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    CalendarRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CalendarScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    NavRouter.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NavRouter(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NotificationScreen(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignInScreen(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SignUpScreen(),
      );
    },
    SinglePostRoute.name: (routeData) {
      final args = routeData.argsAs<SinglePostRouteArgs>();
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.SinglePostScreen(
          key: args.key,
          postId: args.postId,
        ),
      );
    },
    SocialRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SocialScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.SplashScreen(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.WelcomeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CalendarScreen]
class CalendarRoute extends _i11.PageRouteInfo<void> {
  const CalendarRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CalendarRoute.name,
          initialChildren: children,
        );

  static const String name = 'CalendarRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NavRouter]
class NavRouter extends _i11.PageRouteInfo<void> {
  const NavRouter({List<_i11.PageRouteInfo>? children})
      : super(
          NavRouter.name,
          initialChildren: children,
        );

  static const String name = 'NavRouter';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NotificationScreen]
class NotificationRoute extends _i11.PageRouteInfo<void> {
  const NotificationRoute({List<_i11.PageRouteInfo>? children})
      : super(
          NotificationRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotificationRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SignInScreen]
class SignInRoute extends _i11.PageRouteInfo<void> {
  const SignInRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SignUpScreen]
class SignUpRoute extends _i11.PageRouteInfo<void> {
  const SignUpRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SinglePostScreen]
class SinglePostRoute extends _i11.PageRouteInfo<SinglePostRouteArgs> {
  SinglePostRoute({
    _i12.Key? key,
    required int postId,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          SinglePostRoute.name,
          args: SinglePostRouteArgs(
            key: key,
            postId: postId,
          ),
          initialChildren: children,
        );

  static const String name = 'SinglePostRoute';

  static const _i11.PageInfo<SinglePostRouteArgs> page =
      _i11.PageInfo<SinglePostRouteArgs>(name);
}

class SinglePostRouteArgs {
  const SinglePostRouteArgs({
    this.key,
    required this.postId,
  });

  final _i12.Key? key;

  final int postId;

  @override
  String toString() {
    return 'SinglePostRouteArgs{key: $key, postId: $postId}';
  }
}

/// generated route for
/// [_i8.SocialScreen]
class SocialRoute extends _i11.PageRouteInfo<void> {
  const SocialRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SocialRoute.name,
          initialChildren: children,
        );

  static const String name = 'SocialRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.SplashScreen]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.WelcomeScreen]
class WelcomeRoute extends _i11.PageRouteInfo<void> {
  const WelcomeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

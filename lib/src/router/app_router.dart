import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'app_router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: WelcomeRoute.page),
        AutoRoute(page: SignInRoute.page),
        AutoRoute(page: SignUpRoute.page),
        AutoRoute(
          page: NavRouter.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: CalendarRoute.page),
            AutoRoute(page: NotificationRoute.page),
            AutoRoute(page: SocialRoute.page),
          ],
        ),
        AutoRoute(page: SinglePostRoute.page),
        CustomRoute(
          page: NewPostRoute.page,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
      ];
}

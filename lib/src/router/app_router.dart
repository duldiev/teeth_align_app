import 'package:auto_route/auto_route.dart';
import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: false),
        AutoRoute(page: WelcomeRoute.page, initial: false),
        AutoRoute(page: SignInRoute.page, initial: false),
        AutoRoute(page: SignUpRoute.page, initial: true),
      ];
}

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
            AutoRoute(page: PatientHomeRoute.page),
            AutoRoute(page: DoctorHomeRoute.page),
            AutoRoute(page: MentorHomeRoute.page),
            AutoRoute(page: AdminHomeRoute.page),
            AutoRoute(page: CalendarRoute.page),
            AutoRoute(page: NotificationRoute.page),
            AutoRoute(page: SocialRoute.page),
            AutoRoute(page: ReportRoute.page),
            AutoRoute(page: AccountRoute.page),
          ],
        ),
        AutoRoute(page: SinglePostRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: ChatListRoute.page),
        AutoRoute(page: ProfileRoute.page),
        AutoRoute(page: DoctorProfileRoute.page),
        AutoRoute(page: MentorProfileRoute.page),
        AutoRoute(page: PatientProfileRoute.page),
        AutoRoute(page: CameraRoute.page),
        AutoRoute(page: CreateCaseRoute.page),
        AutoRoute(page: AlignerSettingsRoute.page),
        AutoRoute(page: DefaultWebView.page),
        AutoRoute(page: LeaderboardRoute.page),
        AutoRoute(page: AccountListRoute.page),
        AutoRoute(page: DoctorCreateProfileRoute.page),
        AutoRoute(page: RateDoctorRoute.page),
      ];
}

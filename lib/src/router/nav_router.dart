import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/page_route_extension.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

@RoutePage()
class NavRouter extends StatefulWidget {
  const NavRouter({super.key});

  @override
  State<NavRouter> createState() => _NavRouterState();
}

class _NavRouterState extends State<NavRouter> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final homeRoute = switch (appData.role ?? Role.patient) {
      Role.patient => const PatientHomeRoute(),
      Role.mentor => const MentorHomeRoute(),
      Role.admin => const AdminHomeRoute(),
      Role.doctor => const DoctorHomeRoute(),
    };
    final routes = [
      homeRoute,
      const CalendarRoute(),
      appData.role == Role.patient ? const ReportRoute() : const SocialRoute(),
      const NotificationRoute(),
      const AccountRoute(),
    ];
    return AutoTabsRouter(
      routes: routes,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            onTap: (index) => setState(() {
              currentIndex = index;
              tabsRouter.setActiveIndex(index);
            }),
            currentIndex: currentIndex,
            backgroundColor: AppColors.background,
            selectedItemColor: AppColors.primary,
            unselectedItemColor: AppColors.white,
            type: BottomNavigationBarType.fixed,
            items: List.generate(
              routes.length,
              (index) => BottomNavigationBarItem(
                label: routes[index].label,
                icon: Icon(routes[index].icon),
              ),
            ),
          ),
        );
      },
    );
  }
}

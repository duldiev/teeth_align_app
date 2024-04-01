import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        CalendarRoute(),
        NotificationRoute(),
        NotificationRoute(),
      ],
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
            items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'Calendar',
                icon: Icon(Icons.calendar_month),
              ),
              BottomNavigationBarItem(
                label: 'Notifications',
                icon: Icon(Icons.notifications),
              ),
              BottomNavigationBarItem(
                label: 'Social',
                icon: Icon(Icons.supervised_user_circle),
              ),
            ],
          ),
        );
      },
    );
  }
}

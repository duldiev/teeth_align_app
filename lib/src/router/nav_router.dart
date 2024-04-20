import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/page_route_extension.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/admin_bloc/admin_bloc.dart'
    as admin;
import 'package:teeth_align_app/src/presentation/home/blocs/doctor_bloc/doctor_bloc.dart'
    as doc;
import 'package:teeth_align_app/src/presentation/home/blocs/patient_bloc/patient_bloc.dart';
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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      switch (appData.role) {
        case null:
          {}
        case Role.patient:
          {
            context.read<PatientBloc>()
              ..add(GetPatient(appData.userId))
              ..add(GetCases(appData.userId));
          }
        case Role.mentor:
          {}
        case Role.admin:
          {
            context.read<admin.AdminBloc>().add(const admin.GetAll());
          }
        case Role.doctor:
          {
            context.read<doc.DoctorBloc>()
              ..add(const doc.GetMentors())
              ..add(const doc.GetPatients());
          }
      }
    });
  }

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
      // const NotificationRoute(),
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

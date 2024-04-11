import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';

extension PageRouteInfoExtension on PageRouteInfo {
  String get label => switch (this) {
        CalendarRoute() => 'Calendar',
        PatientHomeRoute() => 'Home',
        MentorHomeRoute() => 'Home',
        AdminHomeRoute() => 'Home',
        DoctorHomeRoute() => 'Home',
        ReportRoute() => 'Report',
        SocialRoute() => 'Social',
        NotificationRoute() => 'Notification',
        AccountRoute() => 'Account',
        PageRouteInfo() => routeName,
      };

  IconData get icon => switch (this) {
        PatientHomeRoute() => Icons.home,
        MentorHomeRoute() => Icons.home,
        AdminHomeRoute() => Icons.home,
        DoctorHomeRoute() => Icons.home,
        CalendarRoute() => Icons.calendar_month_rounded,
        ReportRoute() => Icons.list_alt_rounded,
        SocialRoute() => Icons.south_america_outlined,
        NotificationRoute() => Icons.notifications,
        AccountRoute() => Icons.person,
        PageRouteInfo() => Icons.question_mark_rounded,
      };
}

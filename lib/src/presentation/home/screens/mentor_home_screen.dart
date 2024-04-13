import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/main.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/widgets/logo_title.dart';

@RoutePage()
class MentorHomeScreen extends StatelessWidget {
  const MentorHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: const LogoTitle(),
        centerTitle: true,
        actions: client.state.currentUser != null
            ? [
                InkWell(
                  onTap: () => context.router.push(const ChatListRoute()),
                  child: const Icon(
                    FontAwesomeIcons.inbox,
                    size: 24,
                  ),
                ),
                Gap(4.w),
              ]
            : [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
            vertical: 2.h,
          ),
          child: const SizedBox(),
        ),
      ),
    );
  }
}

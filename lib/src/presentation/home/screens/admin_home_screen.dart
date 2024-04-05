// ignore_for_file: deprecated_member_use
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_header.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';

@RoutePage()
class AdminHomeScreen extends StatelessWidget {
  const AdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: const Text('Welcome, Arman!'),
        titleTextStyle: context.textTheme.headlineMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
            onTap: () {},
            child: const Icon(
              FontAwesomeIcons.search,
              size: 20,
            ),
          ),
          Gap(4.w),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
            vertical: 2.h,
          ),
          child: Column(
            children: [
              ListHeader(
                title: 'My patients (Cases)',
                onShowAll: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

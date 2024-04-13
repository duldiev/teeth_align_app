// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/account_tile.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/account_tile_divider.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Аккаунт'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
          vertical: 2.h,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 3.w, right: 4.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.white, width: 1),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.user,
                    size: 30,
                  ),
                ),
                Text(
                  appData.account?.fullName ?? '',
                  style: context.textTheme.titleLarge?.copyWith(height: 1.2),
                ),
              ],
            ),
            Gap(2.h),
            const AccountTileDivider(),
            AccountTile(
              title: 'Edit personal data',
              onTap: () {},
            ),
            const AccountTileDivider(),
            AccountTile(
              title: 'Sign out',
              icon: const Icon(
                FontAwesomeIcons.signOut,
                color: AppColors.danger,
              ),
              onTap: () => context.read<SignInBloc>().add(const SignOut()),
            ),
          ],
        ),
      ),
    );
  }
}

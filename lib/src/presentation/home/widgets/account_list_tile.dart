import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/presentation/home/widgets/list_tile_image.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';

class AccountListTile extends StatelessWidget {
  const AccountListTile({
    super.key,
    required this.account,
  });

  final AccountEntity account;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => switch (account.role) {
        Role.patient => null,
        Role.mentor => null,
        Role.admin => null,
        Role.doctor => context.router.push(
            DoctorProfileRoute(doctor: account as DoctorEntity),
          ),
      },
      borderRadius: BorderRadius.circular(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ListTileImage(),
          Gap(1.h),
          Text(
            account.fullName,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.w700,
            ),
          ),
          // Text(
          //   '${doctor.birthDate.getAge()} years old',
          //   style: context.textTheme.titleMedium?.copyWith(
          //     fontWeight: FontWeight.w500,
          //     color: AppColors.grey,
          //   ),
          // ),
        ],
      ),
    );
  }
}

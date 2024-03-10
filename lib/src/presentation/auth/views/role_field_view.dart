import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class RoleFieldView extends StatelessWidget {
  const RoleFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(
          child: _RoleSelector(
            role: Role.patient,
            isSelected: true,
          ),
        ),
        Gap(2.h),
        const Expanded(
          child: _RoleSelector(
            role: Role.doctor,
            isSelected: false,
          ),
        ),
        Gap(1.h),
      ],
    );
  }
}

class _RoleSelector extends StatelessWidget {
  const _RoleSelector({
    required this.role,
    required this.isSelected,
  });

  final Role role;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    final asset = switch (role) {
      Role.patient => Assets.images.patient,
      Role.doctor => Assets.images.doctor,
    };
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primary : AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          asset.image(height: 14.h),
          Gap(1.2.h),
          Text(
            switch (role) {
              Role.patient => 'Я пациент купивший\nпродукцию teethalign',
              Role.doctor => 'Я ортодонт\nобслуживающий элайнер',
            },
            style: context.textTheme.titleLarge?.copyWith(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

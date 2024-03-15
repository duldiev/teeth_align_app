import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class RoleFieldView extends StatelessWidget {
  const RoleFieldView({
    super.key,
    required this.state,
  });

  final SignUpState state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: _RoleSelector(
            role: Role.patient,
            isSelected: state.registerBody?.role == Role.patient,
            onSelect: () => context.read<SUB>().add(
                  const ChangeRegisterField(
                    field: SignUpField.role,
                    value: Role.patient,
                  ),
                ),
          ),
        ),
        Gap(2.h),
        Expanded(
          child: _RoleSelector(
            role: Role.doctor,
            isSelected: state.registerBody?.role == Role.doctor,
            onSelect: () => context.read<SUB>().add(
                  const ChangeRegisterField(
                    field: SignUpField.role,
                    value: Role.doctor,
                  ),
                ),
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
    required this.onSelect,
  });

  final Role role;
  final bool isSelected;
  final VoidCallback onSelect;

  @override
  Widget build(BuildContext context) {
    final asset = switch (role) {
      Role.patient => Assets.images.patient,
      Role.doctor => Assets.images.doctor,
    };
    return InkWell(
      onTap: onSelect,
      child: Container(
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
      ),
    );
  }
}

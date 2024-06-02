import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class DeleteAccountBtton extends StatelessWidget {
  const DeleteAccountBtton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(3.h),
        InkWell(
          onTap: () => context.read<SignInBloc>().add(
                const DeleteAccount(),
              ),
          child: Text(
            'Удалить аккаунт',
            style: context.textTheme.titleSmall?.copyWith(
              color: AppColors.danger,
            ),
          ),
        ),
      ],
    );
  }
}

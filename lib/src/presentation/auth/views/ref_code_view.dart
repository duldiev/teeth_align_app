import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class RefCodeView extends StatelessWidget {
  const RefCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextInput(
          label: 'Укажите реферальный код\nчтобы получить баланс',
          hintText: 'Введите реферальный код',
          onChanged: (value) => context.read<SignUpBloc>().add(
                ChangeRegisterField(
                  field: SignUpField.refCode,
                  value: value,
                ),
              ),
        ),
        const Gap(4),
        Text(
          ' (не обязательно)',
          style: context.textTheme.labelMedium?.copyWith(
            color: AppColors.white.withOpacity(0.6),
          ),
        ),
      ],
    );
  }
}

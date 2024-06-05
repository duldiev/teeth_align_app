import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/helpers/validators.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_up_bloc/sign_up_bloc.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/auth/core/keys.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class EmailPasswordFieldView extends StatelessWidget {
  const EmailPasswordFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: emailPasswordFormKey,
      child: Column(
        children: [
          Gap(2.h),
          TextInput(
            label: 'Почта',
            hintText: 'Введите почту',
            keyboardType: TextInputType.emailAddress,
            validator: Validators.email,
            onChanged: (value) => context.read<SUB>().add(
                  ChangeRegisterField(field: SignUpField.email, value: value),
                ),
          ),
          Gap(2.h),
          TextInput(
            label: 'Пароль',
            hintText: 'Введите пароль',
            keyboardType: TextInputType.visiblePassword,
            validator: Validators.password,
            suffixType: InputSuffixType.obsecure,
            onChanged: (value) => context.read<SUB>().add(
                  ChangeRegisterField(
                    field: SignUpField.password,
                    value: value,
                  ),
                ),
          ),
        ],
      ),
    );
  }
}

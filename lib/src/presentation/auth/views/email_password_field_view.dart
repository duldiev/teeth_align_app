import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/helpers/validators.dart';
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
            onChanged: (value) {},
          ),
          Gap(2.h),
          TextInput(
            label: 'Пароль',
            hintText: 'Введите пароль',
            keyboardType: TextInputType.visiblePassword,
            validator: Validators.password,
            onChanged: (value) {},
          ),
        ],
      ),
    );
  }
}

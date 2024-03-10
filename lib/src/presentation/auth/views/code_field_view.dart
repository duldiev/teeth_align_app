import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class CodeFieldView extends StatelessWidget {
  const CodeFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(2.h),
        TextInput(
          label: 'Код валидаций',
          hintText: 'Введите код',
          keyboardType: TextInputType.number,
          maxLength: 6,
          onChanged: (value) {},
        ),
        Gap(2.h),
      ],
    );
  }
}

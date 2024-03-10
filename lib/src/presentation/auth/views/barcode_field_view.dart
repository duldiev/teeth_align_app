import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class BarcodeFieldView extends StatelessWidget {
  const BarcodeFieldView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(2.h),
        TextInput(
          label: 'Штрихкод',
          hintText: 'Введите штрихкод',
          keyboardType: TextInputType.number,
          maxLength: 10,
          onChanged: (value) {},
        ),
        Gap(2.h),
      ],
    );
  }
}

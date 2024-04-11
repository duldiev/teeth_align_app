import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class AccountTileDivider extends StatelessWidget {
  const AccountTileDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(height: 2.h, color: AppColors.grey);
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    super.key,
    required this.title,
    this.icon,
    required this.onTap,
  });

  final String title;
  final Icon? icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            Icon(
              icon?.icon ?? FontAwesomeIcons.circleArrowRight,
              size: icon?.size ?? 20,
              color: icon?.color ?? AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}

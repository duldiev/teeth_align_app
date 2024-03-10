import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class ColoredButton extends StatelessWidget {
  const ColoredButton({
    super.key,
    required this.title,
    this.onTap,
    this.showArrow = false,
    this.color,
    this.foregroundColor,
    this.titleStyle,
    this.padding,
  });

  final String title;
  final VoidCallback? onTap;
  final bool showArrow;
  final Color? color;
  final Color? foregroundColor;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final isEnabled = onTap != null;

    return InkWell(
      onTap: onTap,
      child: Container(
        padding: padding ?? EdgeInsets.symmetric(vertical: 1.4.h),
        decoration: BoxDecoration(
          color: color ??
              (isEnabled
                  ? AppColors.primary
                  : AppColors.primary.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(child: SizedBox()),
            Text(
              title,
              style: titleStyle?.copyWith(
                    color: foregroundColor ?? AppColors.white,
                  ) ??
                  context.textTheme.titleMedium?.copyWith(
                    color: foregroundColor ?? AppColors.white,
                  ),
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: showArrow
                  ? Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.only(left: 2.w),
                      child: Icon(
                        FontAwesomeIcons.arrowRight,
                        size: 14,
                        color: foregroundColor ?? AppColors.white,
                      ),
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}

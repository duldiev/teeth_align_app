import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

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
    this.isLoading = false,
  });

  final String title;
  final VoidCallback? onTap;
  final bool showArrow;
  final Color? color;
  final Color? foregroundColor;
  final TextStyle? titleStyle;
  final EdgeInsetsGeometry? padding;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final isEnabled = onTap != null;

    return InkWell(
      onTap: isLoading ? null : onTap,
      child: Container(
        padding: padding ?? EdgeInsets.symmetric(vertical: 1.h),
        decoration: BoxDecoration(
          color: color ??
              (isEnabled
                  ? AppColors.primary
                  : AppColors.primary.withOpacity(0.4)),
          borderRadius: BorderRadius.circular(12),
        ),
        child: isLoading
            ? Transform.scale(
                scale: 0.6,
                child: const CircularLoader(color: AppColors.dark),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: SizedBox()),
                  Text(
                    title,
                    style: titleStyle?.copyWith(
                          color: foregroundColor ?? AppColors.black,
                        ) ??
                        context.textTheme.titleMedium?.copyWith(
                          color: foregroundColor ?? AppColors.black,
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

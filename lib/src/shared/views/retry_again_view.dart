import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

enum RetryAgainViewType { empty, failed }

class RetryAgainView extends StatelessWidget {
  const RetryAgainView({
    super.key,
    this.title,
    required this.onRetry,
    this.hideIcon = false,
    this.type = RetryAgainViewType.failed,
  });

  final String? title;
  final VoidCallback onRetry;
  final bool hideIcon;
  final RetryAgainViewType type;

  @override
  Widget build(BuildContext context) {
    final defaultText = switch (type) {
      RetryAgainViewType.empty =>
        'Похоже, страница пуста.\nОбновите чтобы проверить еще раз',
      RetryAgainViewType.failed => 'Не удалось загрузить страницу',
    };
    const double iconSize = 90;
    final icon = switch (type) {
      RetryAgainViewType.empty => Icon(
          Icons.view_list_sharp,
          size: iconSize,
          color: AppColors.grey.withOpacity(0.6),
        ),
      RetryAgainViewType.failed => const Icon(
          Icons.error_outline,
          size: iconSize,
          color: AppColors.danger,
        ),
    };
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (!hideIcon) ...[
            icon,
            Gap(1.h),
          ],
          Text(
            title ?? defaultText,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
          Gap(2.h),
          InkWell(
            onTap: onRetry,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 26.w,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
                vertical: 1,
              ).copyWith(bottom: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.primary,
                  width: 2,
                ),
              ),
              child: Text(
                'Обновить',
                textAlign: TextAlign.center,
                style: context.textTheme.titleSmall?.copyWith(
                  color: AppColors.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

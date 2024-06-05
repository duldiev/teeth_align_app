import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/helpers/messages.dart';
import 'package:teeth_align_app/src/presentation/base/globals.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

enum ToastType { warning, message, danger, success }

class Toast {
  static void show(
    String? text,
    ToastType type, [
    bool isLong = false,
    IconData? icon,
  ]) =>
      snackbarKey.currentState
        ?..hideCurrentSnackBar
        ..showSnackBar(
          SnackBar(
            padding: EdgeInsets.symmetric(
              vertical: 1.6.h,
              horizontal: 5.w,
            ),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  icon ?? _pickIcon(type),
                  color: _pickTextColor(type),
                  size: 22,
                ),
                Gap(3.w),
                Expanded(
                  flex: 10,
                  child: Text(
                    text ?? Messages.error,
                    style: TextStyle(
                      fontSize: 14,
                      color: _pickTextColor(type),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            duration: Duration(milliseconds: isLong ? 2000 : 1000),
            backgroundColor: _pickColor(type),
          ),
        );

  static void inProgress() => show(
        'In progress...',
        ToastType.warning,
      );

  static void notSynced() => show(
        'Функционал пока не синхронизирован',
        ToastType.warning,
        true,
      );

  static void error(String message) => show(
        message,
        ToastType.danger,
        true,
      );

  static Color _pickColor(ToastType type) {
    switch (type) {
      case ToastType.danger:
        return AppColors.danger;
      case ToastType.message:
        return AppColors.dark;
      case ToastType.warning:
        return AppColors.button;
      case ToastType.success:
        return AppColors.success;
      default:
        return AppColors.primary;
    }
  }

  static Color _pickTextColor(ToastType type) {
    switch (type) {
      case ToastType.danger:
        return AppColors.white;
      case ToastType.message:
        return AppColors.white;
      case ToastType.warning:
        return AppColors.primary;
      case ToastType.success:
        return AppColors.white;
      default:
        return AppColors.primary;
    }
  }

  static IconData _pickIcon(ToastType type) {
    switch (type) {
      case ToastType.danger:
        return FontAwesomeIcons.exclamationCircle;
      case ToastType.message:
        return FontAwesomeIcons.commentDots;
      case ToastType.warning:
        return FontAwesomeIcons.codepen;
      case ToastType.success:
        return FontAwesomeIcons.check;
      default:
        return Icons.message_rounded;
    }
  }
}

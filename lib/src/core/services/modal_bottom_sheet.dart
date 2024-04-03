import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

typedef MBS = ModalBottomSheet;

class ModalBottomSheet {
  static Future<T?> show<T>(
    BuildContext context,
    Widget content, [
    double heightFactor = 0.8,
  ]) =>
      showModalBottomSheet<T>(
        context: context,
        isScrollControlled: true,
        isDismissible: true,
        useSafeArea: true,
        showDragHandle: true,
        enableDrag: true,
        backgroundColor: AppColors.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        clipBehavior: Clip.hardEdge,
        builder: (context) => SafeArea(
          bottom: true,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: context.bottomViewInset + 0.w,
            ),
            child: FractionallySizedBox(
              heightFactor: heightFactor,
              widthFactor: 1,
              child: content,
            ),
          ),
        ),
      );
}

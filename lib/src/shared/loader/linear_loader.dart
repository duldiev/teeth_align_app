import 'package:flutter/material.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class LinearLoader extends StatelessWidget {
  const LinearLoader(this.status, {super.key});

  final LoadStatus status;

  @override
  Widget build(BuildContext context) {
    return switch (status) {
      LoadStatus.initial => const SizedBox(),
      LoadStatus.loading => const LinearProgressIndicator(
          color: AppColors.primary,
          backgroundColor: AppColors.white,
          minHeight: 0.8,
        ),
      LoadStatus.success => const SizedBox(),
      LoadStatus.failed => const SizedBox(),
    };
  }
}

import 'package:flutter/material.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class CircularLoader extends StatelessWidget {
  const CircularLoader({super.key, this.color});

  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color ?? AppColors.primary,
      ),
    );
  }
}

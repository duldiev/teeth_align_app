import 'package:flutter/material.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class ListTileImage extends StatelessWidget {
  const ListTileImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.primary.withOpacity(0.08),
        borderRadius: BorderRadius.circular(12),
      ),
      clipBehavior: Clip.hardEdge,
      child: Assets.images.doctor.image(fit: BoxFit.cover),
    );
  }
}

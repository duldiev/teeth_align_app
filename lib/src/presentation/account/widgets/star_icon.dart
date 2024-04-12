import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class StarIcon extends StatelessWidget {
  const StarIcon({
    super.key,
    this.color,
    this.enabled = false,
  });

  final bool enabled;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Icon(
      FontAwesomeIcons.solidStar, size: 12,
      // ignore: deprecated_member_use_from_same_package
      color: enabled
          ? (color ?? AppColors.primary)
          : AppColors.dark.withOpacity(0.3),
    );
  }
}

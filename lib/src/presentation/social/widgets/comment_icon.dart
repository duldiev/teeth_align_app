import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class CommentIcon extends StatelessWidget {
  const CommentIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Icon(
        FontAwesomeIcons.comment,
        size: 28,
        color: AppColors.white80op,
      ),
    );
  }
}

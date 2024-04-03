import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class AuthorAvatar extends StatelessWidget {
  const AuthorAvatar({
    super.key,
    required this.account,
    this.dimensions = 40,
  });

  final AccountEntity account;
  final double dimensions;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: dimensions,
      width: dimensions,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: AppColors.white),
      ),
      clipBehavior: Clip.hardEdge,
      child: account.avatarUrl == null || account.avatarUrl?.isEmpty == true
          ? Icon(
              FontAwesomeIcons.user,
              color: AppColors.white,
              size: dimensions / 2,
            )
          : Image.network(
              account.avatarUrl!,
              fit: BoxFit.cover,
            ),
    );
  }
}

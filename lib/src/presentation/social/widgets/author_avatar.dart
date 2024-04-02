import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class AuthorAvatar extends StatelessWidget {
  const AuthorAvatar({
    super.key,
    required this.account,
  });

  final AccountEntity account;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 1, color: AppColors.white),
      ),
      clipBehavior: Clip.hardEdge,
      child: account.avatar == null || account.avatar?.isEmpty == true
          ? const Icon(
              FontAwesomeIcons.user,
              color: AppColors.white,
            )
          : Image.network(
              account.avatar!,
              fit: BoxFit.cover,
            ),
    );
  }
}

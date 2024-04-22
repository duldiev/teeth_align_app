import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: appData.isChatAvailable
          ? () => context.router.push(ChatListRoute())
          : null,
      child: Icon(
        FontAwesomeIcons.inbox,
        size: 24,
        color: appData.isChatAvailable ? AppColors.white : AppColors.grey,
      ),
    );
  }
}

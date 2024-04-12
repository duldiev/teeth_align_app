import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

@RoutePage()
class ReportScreen extends StatelessWidget {
  const ReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.router.push(CameraRoute(
          callbackOnSend: () {},
        )),
        child: const Icon(
          FontAwesomeIcons.camera,
          size: 20,
          color: AppColors.white,
        ),
      ),
    );
  }
}

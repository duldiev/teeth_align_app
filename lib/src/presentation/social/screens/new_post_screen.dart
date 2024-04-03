import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

@RoutePage()
class NewPostScreen extends StatelessWidget {
  const NewPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Text('New post'),
        actions: [
          CloseButton(),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            TextInput(
              fillColor: AppColors.white.withOpacity(0.05),
              hideBorder: true,
              maxLines: null,
              brightness: Brightness.light,
            ),
            Gap(2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.image_outlined,
                        size: 40,
                        color: AppColors.white80op,
                      ),
                      const Gap(6),
                      Text(
                        'Upload\nimage',
                        style: context.textTheme.titleSmall?.copyWith(
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 4.w,
                      vertical: 6,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.blue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.arrowRight,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

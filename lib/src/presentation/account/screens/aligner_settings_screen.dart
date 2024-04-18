import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/aligner_settings_tile.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

@RoutePage()
class AlignerSettingsScreen extends StatelessWidget {
  const AlignerSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Настройки элайнера'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: Column(
          children: [
            AlignerSettingsTile(
              title: 'Общее количество',
              selectedItem: '12',
              iconData: Icons.grid_view_outlined,
              onTap: () => showMenu(
                context: context,
                position: RelativeRect.fromLTRB(10.w, 22.h, 0, 40.h),
                constraints: BoxConstraints.tightFor(
                  height: 40.h,
                  width: 20.w,
                ),
                color: AppColors.post,
                items: List.generate(
                  100,
                  (index) => PopupMenuItem(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        (index + 1).toString(),
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            AlignerSettingsTile(
              title: 'Текущий элайнер',
              selectedItem: '1',
              iconData: Icons.next_plan_outlined,
              onTap: () => showMenu(
                context: context,
                position: RelativeRect.fromLTRB(10.w, 30.h, 0, 40.h),
                constraints: BoxConstraints.tightFor(
                  height: 40.h,
                  width: 20.w,
                ),
                color: AppColors.post,
                items: List.generate(
                  100,
                  (index) => PopupMenuItem(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        (index + 1).toString(),
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            AlignerSettingsTile(
              title: 'Плановые дни ношения',
              selectedItem: '12 дней',
              iconData: Icons.check_circle_outline_outlined,
              onTap: () => showMenu(
                context: context,
                position: RelativeRect.fromLTRB(10.w, 30.h, 0, 40.h),
                constraints: BoxConstraints.tightFor(
                  height: 40.h,
                  width: 30.w,
                ),
                color: AppColors.post,
                items: List.generate(
                  100,
                  (index) => PopupMenuItem(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${index + 1} дней',
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            AlignerSettingsTile(
              title: 'Уведомить меня',
              selectedItem: '12:00',
              iconData: Icons.timer_outlined,
              onTap: () => showMenu(
                context: context,
                position: RelativeRect.fromLTRB(10.w, 30.h, 0, 40.h),
                constraints: BoxConstraints.tightFor(
                  height: 40.h,
                  width: 30.w,
                ),
                color: AppColors.post,
                items: List.generate(
                  24,
                  (index) => PopupMenuItem(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        '${index < 10 ? '0' : ''}$index:00',
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
          child: ColoredButton(
            title: 'Сохранить',
            onTap: () {},
          ),
        ),
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/aligner_settings_tile.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';

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
              onTap: () {},
            ),
            AlignerSettingsTile(
              title: 'Текущий элайнер',
              selectedItem: '1',
              iconData: Icons.next_plan_outlined,
              onTap: () {},
            ),
            AlignerSettingsTile(
              title: 'Плановые дни ношения',
              selectedItem: '12 дней',
              iconData: Icons.check_circle_outline_outlined,
              onTap: () {},
            ),
            AlignerSettingsTile(
              title: 'Уведомить меня',
              selectedItem: '12:00',
              iconData: Icons.timer_outlined,
              onTap: () {},
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

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/aligner_settings_tile.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/patient_bloc/patient_bloc.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

@RoutePage()
class AlignerSettingsScreen extends StatelessWidget {
  const AlignerSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PatientBloc, PatientState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox(),
          loading: () => const Scaffold(body: CircularLoader()),
          loaded: (data) {
            final time = data.alignerSettingsBody!.reminderTime;
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
                      selectedItem: '${data.alignerSettingsBody!.maxSet}',
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
                          (index) {
                            final value = '${index + 1}';
                            return PopupMenuItem(
                              onTap: () => context.read<PatientBloc>().add(
                                    ChangeSettings(
                                      AlignerSettingsField.maxSet,
                                      value,
                                    ),
                                  ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  value,
                                  style:
                                      context.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    AlignerSettingsTile(
                      title: 'Текущий элайнер',
                      selectedItem: '${data.alignerSettingsBody!.currentSet}',
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
                          (index) {
                            final value = '${index + 1}';
                            return PopupMenuItem(
                              onTap: () => context.read<PatientBloc>().add(
                                    ChangeSettings(
                                      AlignerSettingsField.currentSet,
                                      value,
                                    ),
                                  ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  value,
                                  style:
                                      context.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    AlignerSettingsTile(
                      title: 'Плановые дни ношения',
                      selectedItem:
                          '${data.alignerSettingsBody?.wearDuration} дней',
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
                          (index) {
                            final value = '${index + 1}';
                            return PopupMenuItem(
                              onTap: () => context.read<PatientBloc>().add(
                                    ChangeSettings(
                                      AlignerSettingsField.wearDuration,
                                      value,
                                    ),
                                  ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  '$value дней',
                                  style:
                                      context.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    AlignerSettingsTile(
                      title: 'Уведомить меня',
                      selectedItem:
                          '${time.hour < 10 ? '0' : ''}${time.hour}:${time.minute < 10 ? '0' : ''}${time.minute}',
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
                          (index) {
                            final value = '${index < 10 ? '0' : ''}$index:00';
                            return PopupMenuItem(
                              onTap: () => context.read<PatientBloc>().add(
                                    ChangeSettings(
                                      AlignerSettingsField.reminderTime,
                                      value,
                                    ),
                                  ),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  value,
                                  style:
                                      context.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            );
                          },
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
                    onTap: () => context.read<PatientBloc>().add(
                          const UpdateAlignerSettings(),
                        ),
                  ),
                ),
              ),
            );
          },
          failed: () => const SizedBox(),
        );
      },
    );
  }
}

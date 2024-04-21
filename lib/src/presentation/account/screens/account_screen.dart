// ignore_for_file: deprecated_member_use

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as ser;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/helpers/app_data.dart';
import 'package:teeth_align_app/src/core/services/toast.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/account_tile.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/account_tile_divider.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/patient_bloc/patient_bloc.dart';
import 'package:teeth_align_app/src/router/app_router.gr.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

@RoutePage()
class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Аккаунт'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 2.w,
          vertical: 2.h,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: EdgeInsets.only(left: 3.w, right: 4.w),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.white, width: 1),
                  ),
                  child: const Icon(
                    FontAwesomeIcons.user,
                    size: 30,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.w),
                        child: Text(
                          appData.account?.fullName ?? '',
                          style: context.textTheme.titleLarge?.copyWith(
                            height: 1.2,
                          ),
                        ),
                      ),
                      if (appData.account?.role == Role.patient) ...[
                        if (appData.patient?.referralCode != null) ...[
                          InkWell(
                            onTap: () => showDialog(
                              context: context,
                              builder: (context) => const ApplyCodeDialog(),
                            ),
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 6,
                              ),
                              margin: EdgeInsets.only(top: 1.h, right: 3.w),
                              decoration: BoxDecoration(
                                color: AppColors.white.withOpacity(0.2),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Укажите реферальный код\nчтобы получить баланс',
                                    style: context.textTheme.labelMedium
                                        ?.copyWith(),
                                  ),
                                  const Icon(
                                    FontAwesomeIcons.arrowRight,
                                    size: 16,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ] else ...[
                          const Gap(6),
                          Padding(
                            padding: EdgeInsets.only(left: 1.2.w),
                            child: Row(
                              children: [
                                Text(
                                  'Ваш код: 423433',
                                  style:
                                      context.textTheme.labelMedium?.copyWith(),
                                ),
                                Gap(3.w),
                                InkWell(
                                  onTap: () => ser.Clipboard.setData(
                                    ser.ClipboardData(
                                      text: appData.patient?.referralCode ?? '',
                                    ),
                                  ).whenComplete(
                                    () => Toast.show(
                                      'Copied',
                                      ToastType.message,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(
                                      FontAwesomeIcons.copy,
                                      size: 16,
                                      color: AppColors.grey,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ],
                    ],
                  ),
                ),
              ],
            ),
            Gap(2.h),
            const AccountTileDivider(),
            AccountTile(
              title: 'Изменить данные',
              onTap: () {},
            ),
            const AccountTileDivider(),
            AccountTile(
              title: 'Настройки элайнера',
              onTap: () => context.router.push(const AlignerSettingsRoute()),
            ),
            const AccountTileDivider(),
            AccountTile(
              title: 'Выйти из аккаунта',
              icon: const Icon(
                FontAwesomeIcons.signOut,
                color: AppColors.danger,
              ),
              onTap: () => context.read<SignInBloc>().add(const SignOut()),
            ),
          ],
        ),
      ),
    );
  }
}

class ApplyCodeDialog extends StatefulWidget {
  const ApplyCodeDialog({
    super.key,
  });

  @override
  State<ApplyCodeDialog> createState() => _ApplyCodeDialogState();
}

class _ApplyCodeDialogState extends State<ApplyCodeDialog> {
  String code = '';

  @override
  Widget build(BuildContext context) {
    return BlocListener<PatientBloc, PatientState>(
      listener: (context, state) {
        if (state.runtimeType == Loaded) {
          context.router.maybePop();
        }
      },
      child: Dialog(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4.w,
            vertical: 2.h,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Укажите реферальный код\nчтобы получить баланс',
                style: context.textTheme.titleMedium?.copyWith(
                  color: AppColors.dark,
                ),
                textAlign: TextAlign.center,
              ),
              Gap(1.h),
              Transform.scale(
                scale: 0.8,
                child: TextInput(
                  hintText: 'Введите реферальный код',
                  fillColor: AppColors.dark.withOpacity(
                    0.2,
                  ),
                  onChanged: (value) => setState(() => code = value),
                ),
              ),
              Gap(1.h),
              Transform.scale(
                scale: 0.7,
                child: ColoredButton(
                  title: 'Применить',
                  onTap: code.isNotEmpty
                      ? () => context.read<PatientBloc>().add(
                            ApplyRefCode(code),
                          )
                      : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

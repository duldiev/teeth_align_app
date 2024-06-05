import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/helpers/date_helper.dart';
import 'package:teeth_align_app/src/core/services/toast.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/doctor_access_bloc/doctor_access_bloc.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';
import 'package:teeth_align_app/src/shared/views/retry_again_view.dart';

class _Provider extends StatelessWidget {
  const _Provider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<DoctorAccessBloc>()..add(const GetAccesses()),
      child: child,
    );
  }
}

@RoutePage()
class DoctorAccessListScreen extends StatelessWidget {
  const DoctorAccessListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: BlocBuilder<DoctorAccessBloc, DoctorAccessState>(
        builder: (context, state) {
          return Scaffold(
            appBar: const MyAppBar(
              title: Text('Accesses'),
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: Column(
                children: [
                  ColoredButton(
                    title: 'Добавить доктора',
                    onTap: () => context.read<DoctorAccessBloc>().add(
                          const GenerateCode(),
                        ),
                  ),
                  Divider(height: 6.h),
                  state.when(
                    initial: () => const SizedBox(),
                    loading: () => Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: const CircularLoader(),
                    ),
                    loaded: (data) => _LoadedView(data),
                    failed: () => Padding(
                      padding: EdgeInsets.only(top: 30.h),
                      child: RetryAgainView(
                        onRetry: () => context.read<DoctorAccessBloc>().add(
                              const GetAccesses(),
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _LoadedView extends StatelessWidget {
  const _LoadedView(this.data);

  final DoctorAccessStateViewModel data;

  @override
  Widget build(BuildContext context) {
    if (data.accesses.isEmpty) {
      return RetryAgainView(
        type: RetryAgainViewType.empty,
        onRetry: () => context.read<DoctorAccessBloc>().add(
              const GetAccesses(),
            ),
      );
    }
    return Column(
      children: List.generate(data.accesses.length, (index) {
        final access = data.accesses[index];
        final isActivated = access.activationDate != null;
        final color = isActivated ? AppColors.success : AppColors.grey;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    isActivated
                        ? FontAwesomeIcons.circleCheck
                        : FontAwesomeIcons.circle,
                    color: color,
                  ),
                  Gap(2.5.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (isActivated) ...[
                        Text(
                          access.account?.fullName ?? 'undefined',
                          style: context.textTheme.titleSmall?.copyWith(
                            color: AppColors.white,
                          ),
                        ),
                      ],
                      Text(
                        DateConverter.convertDate(
                          isActivated
                              ? access.activationDate
                              : access.createdDate,
                          'dd.MM.yyyy, HH:mm',
                        ),
                        style: context.textTheme.titleSmall?.copyWith(
                          color: AppColors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  if (data.newGeneratedCode == access.accessCode) ...[
                    Text(
                      'Новый',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                    Gap(2.w),
                  ],
                  Text(
                    access.accessCode,
                    style: context.textTheme.titleSmall?.copyWith(
                      color: AppColors.white,
                    ),
                  ),
                  Gap(2.2.w),
                  InkWell(
                    onTap: () => Clipboard.setData(
                      ClipboardData(text: access.accessCode),
                    ).whenComplete(
                      () => Toast.show('Скопировано', ToastType.message),
                    ),
                    child: const Icon(
                      FontAwesomeIcons.copy,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
    );
  }
}

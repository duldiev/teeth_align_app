import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/presentation/account/widgets/delete_account_button.dart';
import 'package:teeth_align_app/src/presentation/auth/core/enums.dart';
import 'package:teeth_align_app/src/presentation/home/blocs/admin_bloc/admin_bloc.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';
import 'package:teeth_align_app/src/shared/views/retry_again_view.dart';

class AdminPersonalDataView extends StatefulWidget {
  const AdminPersonalDataView({super.key});

  @override
  State<AdminPersonalDataView> createState() => _AdminPersonalDataViewState();
}

class _AdminPersonalDataViewState extends State<AdminPersonalDataView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<AdminBloc>().add(const GetAdminMe());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdminBloc, AdminState>(
      builder: (context, state) => state.when(
        initial: () => const SizedBox(),
        loading: () => const CircularLoader(),
        loaded: (data) {
          final admin = data.admin;

          void onChanged(AProfileField field, String value) {
            context.read<AdminBloc>().add(
                  ChangeField(field: field, value: value),
                );
          }

          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: SafeArea(
              child: Column(
                children: [
                  TextInput(
                    label: 'Имя',
                    hintText: 'Имя',
                    initialValue: admin?.firstName,
                    onChanged: (value) => onChanged(
                      AProfileField.firstName,
                      value,
                    ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Фамилия',
                    hintText: 'Фамилия',
                    initialValue: admin?.lastName,
                    onChanged: (value) => onChanged(
                      AProfileField.lastName,
                      value,
                    ),
                  ),
                  Gap(1.5.h),
                  TextInput(
                    label: 'Почта',
                    hintText: 'Почта',
                    initialValue: admin?.email,
                    onChanged: (value) => onChanged(
                      AProfileField.email,
                      value,
                    ),
                  ),
                  Gap(3.h),
                  ColoredButton(
                    title: 'Сохранить',
                    onTap: () => context.read<AdminBloc>().add(
                          const SaveFields(),
                        ),
                  ),
                  const DeleteAccountBtton(),
                ],
              ),
            ),
          );
        },
        failed: () => RetryAgainView(
          onRetry: () => context.read<AdminBloc>().add(
                const GetAdminMe(),
              ),
        ),
      ),
    );
  }
}

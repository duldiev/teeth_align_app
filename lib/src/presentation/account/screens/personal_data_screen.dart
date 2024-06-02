import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/presentation/account/views/doctor_personal_data_view.dart';
import 'package:teeth_align_app/src/presentation/account/views/mentor_personal_data_view.dart';
import 'package:teeth_align_app/src/presentation/auth/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/views/retry_again_view.dart';

@RoutePage()
class PersonalDataScreen extends StatelessWidget {
  const PersonalDataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignInBloc, SignInState>(
      builder: (context, state) {
        return Scaffold(
          appBar: const MyAppBar(
            title: Text('Персональные данные'),
          ),
          body: switch (state.account?.role) {
            null => RetryAgainView(
                onRetry: () => context.read<SignInBloc>().add(
                      const CheckAuthorized(),
                    ),
              ),
            Role.patient => const SizedBox(),
            Role.mentor => const MentorPersonalDataView(),
            Role.admin => const SizedBox(),
            Role.doctor => const DoctorPersonalDataView(),
          },
        );
      },
    );
  }
}

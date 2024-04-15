import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/presentation/report/blocs/create_case_bloc/create_case_bloc.dart';
import 'package:teeth_align_app/src/presentation/report/core/enum.dart';
import 'package:teeth_align_app/src/presentation/report/core/keys.dart';
import 'package:teeth_align_app/src/presentation/report/widgets/case_input.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class _Provider extends StatelessWidget {
  const _Provider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<CreateCaseBloc>(),
      child: child,
    );
  }
}

@RoutePage()
class CreateCaseScreen extends StatelessWidget {
  const CreateCaseScreen({
    super.key,
    required this.patientId,
  });

  final int patientId;

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: BlocConsumer<CreateCaseBloc, CreateCaseState>(
        listener: (context, state) {
          if (state.uploadStatus == LoadStatus.success) {
            context.router.maybePop();
          }
        },
        listenWhen: (prev, curr) => prev.status != curr.status,
        builder: (context, state) {
          return Scaffold(
            appBar: const MyAppBar(
              title: Text('Create a case'),
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: SafeArea(
                child: Form(
                  key: caseForm,
                  child: Column(
                    children: [
                      for (int i = 0; i < CaseField.values.length; i += 2) ...[
                        Row(
                          children: [
                            Expanded(
                              child: CaseInput(
                                field: CaseField.values[i],
                                image: state.caseImages[CaseField.values[i]],
                              ),
                            ),
                            Gap(4.w),
                            Expanded(
                              child: CaseInput(
                                field: CaseField.values[i + 1],
                                image:
                                    state.caseImages[CaseField.values[i + 1]],
                              ),
                            )
                          ],
                        ),
                        Gap(2.h),
                      ],
                      // ...List.generate(
                      //   CaseField.values.length,
                      //   (index) {
                      //     final field = CaseField.values[index];
                      //     return CaseInput(
                      //       field: field,
                      //       imageName: state.caseImages[field]?.name,
                      //     );
                      //   },
                      // ),
                      TextInput(
                        label: 'Leave the comment',
                        brightness: Brightness.light,
                        fillColor: AppColors.dark.withOpacity(0.5),
                        hintText: 'Describe',
                        maxLines: 5,
                        onChanged: (value) =>
                            context.read<CreateCaseBloc>().add(
                                  ChangeComment(value),
                                ),
                      ),
                      Gap(3.h),
                      ColoredButton(
                        title: 'Create',
                        onTap: () => context.read<CreateCaseBloc>().add(
                              Create(patientId),
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/presentation/account/blocs/rate_doctor_bloc/rate_doctor_bloc.dart';
import 'package:teeth_align_app/src/presentation/account/core/enums.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';
import 'package:teeth_align_app/src/shared/loader/circlular_loader.dart';

class _Provider extends StatelessWidget {
  const _Provider({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<RateDoctorBloc>(),
      child: child,
    );
  }
}

@RoutePage()
class RateDoctorScreen extends StatelessWidget {
  const RateDoctorScreen({
    super.key,
    required this.doctor,
  });

  final DoctorEntity doctor;

  @override
  Widget build(BuildContext context) {
    return _Provider(
      child: BlocConsumer<RateDoctorBloc, RateDoctorState>(
        listener: (context, state) {
          if (state.status == LoadStatus.success) {
            context.router.maybePop();
          }
        },
        builder: (context, state) {
          if (state.status == LoadStatus.loading) {
            return const Scaffold(body: CircularLoader());
          }
          return Scaffold(
            appBar: const MyAppBar(
              title: Text('Оценка ортодонта'),
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      clipBehavior: Clip.hardEdge,
                      child: Assets.images.doctor.image(
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    Gap(1.5.h),
                    Text(
                      doctor.fullName,
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    if (doctor.speciality != null) ...[
                      Text(
                        doctor.speciality!,
                        style: context.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                    Gap(2.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        5,
                        (index) => Padding(
                          padding: EdgeInsets.symmetric(horizontal: 3.w),
                          child: InkWell(
                            onTap: () => context.read<RDB>().add(
                                  ChangeField(RateDoctorField.stars, index + 1),
                                ),
                            child: Icon(
                              state.body!.stars > index
                                  ? FontAwesomeIcons.solidStar
                                  : FontAwesomeIcons.star,
                              color: state.body!.stars > index
                                  ? AppColors.yellow
                                  : AppColors.white80op,
                              size: 34,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Gap(4.h),
                    Text(
                      'Оценка качества обучения',
                      style: context.textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Gap(1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Качественное онлайн-обследование',
                          style: context.textTheme.titleLarge?.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Checkbox(
                          value: state.body!.onlineExamination,
                          onChanged: (value) => context.read<RDB>().add(
                                ChangeField(
                                  RateDoctorField.onlineExam,
                                  value,
                                ),
                              ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Качественная консультация',
                          style: context.textTheme.titleLarge?.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Checkbox(
                          value: state.body!.consultation,
                          onChanged: (value) => context.read<RDB>().add(
                                ChangeField(
                                  RateDoctorField.consultation,
                                  value,
                                ),
                              ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Корректные медицинские инструкции',
                          style: context.textTheme.titleLarge?.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        Checkbox(
                          value: state.body!.medicineInstruction,
                          onChanged: (value) => context.read<RDB>().add(
                                ChangeField(
                                  RateDoctorField.medicineInstruction,
                                  value,
                                ),
                              ),
                        ),
                      ],
                    ),
                    Gap(2.h),
                    Text(
                      'Комментарий к оценке',
                      style: context.textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    const Gap(4),
                    TextInput(
                      hintText: 'Например. Профессиональное обследование',
                      maxLines: 4,
                      onChanged: (value) => context.read<RDB>().add(
                            ChangeField(
                              RateDoctorField.comment,
                              value,
                            ),
                          ),
                    ),
                    Gap(4.h),
                    ColoredButton(
                      title: 'Отправить',
                      onTap: () => context.read<RDB>().add(Send(doctor.id)),
                    ),
                    Gap(2.h),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

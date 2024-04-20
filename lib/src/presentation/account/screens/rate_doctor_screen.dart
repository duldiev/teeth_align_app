import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/buttons/colored_button.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

@RoutePage()
class RateDoctorScreen extends StatelessWidget {
  const RateDoctorScreen({
    super.key,
    required this.doctor,
  });

  final DoctorEntity doctor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(
        title: Text('Оценка ортодонта'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                clipBehavior: Clip.hardEdge,
                child: Assets.images.doctor.image(
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
              Gap(2.h),
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
              Gap(3.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3.w),
                    child: Icon(
                      FontAwesomeIcons.star,
                      color: AppColors.white80op,
                      size: 34,
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
              Gap(2.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Online examination',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Consultation',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Checkbox(
                    value: true,
                    onChanged: (value) {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Medicine instruction',
                    style: context.textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                  ),
                ],
              ),
              Gap(2.h),
              Text(
                'Оставить комментарий',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.left,
              ),
              const Gap(4),
              TextInput(
                hintText: 'Eg. The doctor is very friendly',
                maxLines: 5,
                onChanged: (value) {},
              ),
              Gap(4.h),
              ColoredButton(
                title: 'Отправить',
                onTap: () {},
              ),
              Gap(2.h),
            ],
          ),
        ),
      ),
    );
  }
}

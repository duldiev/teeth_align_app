import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/dependencies/injection.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/presentation/calendar/blocs/create_event_bloc/create_event_bloc.dart';
import 'package:teeth_align_app/src/presentation/calendar/helpers/meeting.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/date_picker_cupertino.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class CreateEventModalView extends StatelessWidget {
  const CreateEventModalView({
    super.key,
    required this.isEdit,
    this.event,
    required this.callback,
  });

  final bool isEdit;
  final Meeting? event;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CreateEventBloc>(
          create: (_) => getIt<CreateEventBloc>()
            ..add(SetInitial(event))
            ..add(IsEdit(isEdit)),
        ),
      ],
      child: Container(
        color: AppColors.background,
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          padding: EdgeInsets.only(
            left: 4.w,
            right: 4.w,
            bottom: 6.h,
          ),
          child: _Content(
            isEdit: isEdit,
            event: event,
            callback: callback,
          ),
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content({
    required this.isEdit,
    this.event,
    required this.callback,
  });

  final bool isEdit;
  final Meeting? event;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateEventBloc, CreateEventState>(
      listener: (context, state) {
        if (state.success) {
          context.router.maybePop();
          callback();
        }
      },
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  isEdit ? 'Change' : 'Add event',
                  style: context.textTheme.titleMedium?.copyWith(
                    fontSize: 22,
                  ),
                ),
                GestureDetector(
                  onTap: state.isValid
                      ? () {
                          if (isEdit) {
                            context.read<CreateEventBloc>().add(
                                  const EditEvent(),
                                );
                          } else {
                            context.read<CreateEventBloc>().add(
                                  const CreateEvent(),
                                );
                          }
                        }
                      : null,
                  child: Text(
                    'Done',
                    style: context.textTheme.titleMedium?.copyWith(
                      color:
                          state.isValid ? AppColors.primary : AppColors.white,
                    ),
                  ),
                ),
              ],
            ),
            const Divider(),
            Gap(1.h),
            TextInput(
              label: 'Name',
              hintText: 'Name',
              initialValue: event?.eventName,
              onChanged: (value) => context.read<CreateEventBloc>().add(
                    ChangeName(value),
                  ),
            ),
            Gap(2.5.h),
            TextInput(
              hintText: 'Description',
              initialValue: event?.description,
              minLines: 2,
              maxLines: 5,
              onChanged: (value) => context.read<CreateEventBloc>().add(
                    ChangeDescription(value),
                  ),
            ),
            Gap(2.h),
            DatePickerCupertino(
              label: 'Start',
              initialDateTime: state.formDataEvent.from,
              maximumDate: state.formDataEvent.to,
              mode: CupertinoDatePickerMode.dateAndTime,
              onDateTimeChanged: (value) => context.read<CreateEventBloc>().add(
                    ChangeFromDate(value),
                  ),
            ),
            Gap(2.h),
            DatePickerCupertino(
              label: 'End',
              initialDateTime: state.formDataEvent.to,
              minimumDate: state.formDataEvent.from,
              mode: CupertinoDatePickerMode.dateAndTime,
              onDateTimeChanged: (value) => context.read<CreateEventBloc>().add(
                    ChangeToDate(value),
                  ),
            ),
            Gap(2.h),
          ],
        );
      },
    );
  }
}

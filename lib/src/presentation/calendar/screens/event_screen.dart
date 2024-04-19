import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:teeth_align_app/src/core/extensions/context_extension.dart';
import 'package:teeth_align_app/src/core/helpers/date_helper.dart';
import 'package:teeth_align_app/src/core/services/modal_bottom_sheet.dart';
import 'package:teeth_align_app/src/presentation/calendar/blocs/create_event_bloc/create_event_bloc.dart';
import 'package:teeth_align_app/src/presentation/calendar/helpers/meeting.dart';
import 'package:teeth_align_app/src/presentation/calendar/views/create_event_modal_view.dart';
import 'package:teeth_align_app/src/shared/app_bar/my_app_bar.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

@RoutePage()
class EventScreen extends StatelessWidget {
  const EventScreen({
    super.key,
    required this.event,
    required this.callback,
  });

  final Meeting event;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateEventBloc, CreateEventState>(
      listener: (context, state) {
        if (state.success) {
          callback();
          context.router.maybePop();
        }
      },
      child: Scaffold(
        appBar: MyAppBar(
          title: const Text('data'),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 4.w),
              child: GestureDetector(
                onTap: () => MBS.show(
                  context,
                  CreateEventModalView(
                    isEdit: true,
                    event: event,
                    callback: callback,
                  ),
                ),
                child: const Icon(
                  FontAwesomeIcons.penToSquare,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                bottom: 0,
                left: 0,
                right: 0,
                child: SingleChildScrollView(
                  clipBehavior: Clip.none,
                  padding: EdgeInsets.all(4.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event.eventName,
                        style: context.textTheme.titleMedium?.copyWith(
                          fontSize: 22,
                        ),
                      ),
                      Gap(1.h),
                      RichText(
                        text: TextSpan(
                          text: DateConverter.convertDate(
                            event.from,
                            'HH:mm, MMM dd',
                          ),
                          children: [
                            const TextSpan(text: '  -  '),
                            TextSpan(
                              text: DateConverter.convertDate(
                                event.to,
                                'HH:mm, MMM dd',
                              ),
                            ),
                          ],
                          style: context.textTheme.titleMedium?.copyWith(
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      Gap(1.h),
                      const Divider(),
                      Gap(1.h),
                      Text(
                        event.description,
                        style: context.textTheme.titleMedium?.copyWith(
                          fontSize: 14,
                          color: AppColors.primary,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  width: 80.w,
                  color: AppColors.background,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'deleteEvent',
                      style: context.textTheme.titleMedium?.copyWith(
                        color: AppColors.danger,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

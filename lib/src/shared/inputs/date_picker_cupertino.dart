import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:teeth_align_app/src/core/helpers/date_helper.dart';
import 'package:teeth_align_app/src/core/services/modal_bottom_sheet.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';
import 'package:teeth_align_app/src/shared/inputs/text_input.dart';

class DatePickerCupertino extends StatefulWidget {
  const DatePickerCupertino({
    super.key,
    required this.label,
    required this.onDateTimeChanged,
    this.initialDateTime,
    this.format,
    this.mode,
    this.minimumDate,
    this.maximumDate,
    this.backgroundColor,
    this.enableShadow = true,
  });

  final String label;
  final DateTime? initialDateTime;
  final void Function(DateTime) onDateTimeChanged;
  final String? format;
  final CupertinoDatePickerMode? mode;
  final DateTime? minimumDate;
  final DateTime? maximumDate;
  final Color? backgroundColor;
  final bool enableShadow;

  @override
  State<DatePickerCupertino> createState() => _DatePickerCupertinoState();
}

class _DatePickerCupertinoState extends State<DatePickerCupertino> {
  bool isOpen = false;
  double height = 0;
  late TextEditingController _dateController;
  String dateFormat = 'd MMMM, HH:mm';

  @override
  void initState() {
    if (widget.mode == CupertinoDatePickerMode.date) {
      dateFormat = 'd MMMM, yyyy';
    }
    if (widget.format != null) {
      dateFormat = widget.format!;
    }

    _dateController = TextEditingController(
      text: DateConverter.convertDate(
        widget.initialDateTime ?? DateTime.now(),
        dateFormat,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => MBS.show(
            context,
            Transform.translate(
              offset: const Offset(0, -20),
              child: CupertinoDatePicker(
                initialDateTime: widget.initialDateTime,
                mode: widget.mode ?? CupertinoDatePickerMode.dateAndTime,
                use24hFormat: true,
                minimumDate: widget.minimumDate,
                maximumDate: widget.maximumDate,
                onDateTimeChanged: (date) {
                  widget.onDateTimeChanged(date);
                  setState(
                    () => _dateController.text = DateConverter.convertDate(
                          date,
                          dateFormat,
                        ) ??
                        '',
                  );
                },
              ),
            ),
            0.25,
          ),
          child: TextInput(
            label: widget.label,
            controller: _dateController,
            hintText: 'dd.mm.yyyy',
            suffixIcon: const Icon(
              FontAwesomeIcons.calendar,
              color: AppColors.dark,
            ),
            enabled: false,
          ),
        ),
        // AnimatedMainCard(
        //   color: widget.backgroundColor ?? AppColors.white,
        //   duration: const Duration(milliseconds: 250),
        //   height: height,
        //   width: 100.w,
        //   enableShadow: false,
        //   child: height == 20.h
        //       ?
        //       : const SizedBox(),
        // ),
      ],
    );
  }
}

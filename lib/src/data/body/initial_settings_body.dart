// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

import 'package:teeth_align_app/src/data/body/time_body.dart';

class InitialSettingsBody extends Equatable {
  final int maxSet;
  final int currentSet;
  final int wearDuration;
  final TimeBody reminderTime;

  const InitialSettingsBody({
    required this.maxSet,
    required this.currentSet,
    required this.wearDuration,
    required this.reminderTime,
  });

  factory InitialSettingsBody.empty() => const InitialSettingsBody(
        maxSet: 0,
        currentSet: 0,
        wearDuration: 0,
        reminderTime: TimeBody(hour: 0, minute: 0, second: 0, nano: 0),
      );

  Map<String, dynamic> toMap() => {
        'maxSet': maxSet,
        'currentSet': currentSet,
        'wearDuration': wearDuration,
        'reminderTime': reminderTime.toMap(),
      };

  InitialSettingsBody copyWith({
    int? maxSet,
    int? currentSet,
    int? wearDuration,
    TimeBody? reminderTime,
  }) {
    return InitialSettingsBody(
      maxSet: maxSet ?? this.maxSet,
      currentSet: currentSet ?? this.currentSet,
      wearDuration: wearDuration ?? this.wearDuration,
      reminderTime: reminderTime ?? this.reminderTime,
    );
  }

  @override
  List<Object?> get props => [
        maxSet,
        currentSet,
        wearDuration,
        reminderTime,
      ];
}

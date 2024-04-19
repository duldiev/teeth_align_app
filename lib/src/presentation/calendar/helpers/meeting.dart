import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:teeth_align_app/src/core/extensions/string_extension.dart';
import 'package:teeth_align_app/src/domain/entity/event_entity.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

class Meeting extends Equatable {
  final int id;
  final String eventName;
  final String description;
  final DateTime from;
  final DateTime to;
  final Color background;
  final bool isAllDay;

  const Meeting({
    required this.id,
    required this.eventName,
    required this.description,
    required this.from,
    required this.to,
    required this.background,
    required this.isAllDay,
  });

  factory Meeting.parse(EventEntity event) => Meeting(
        id: event.id ?? -1,
        eventName: event.name ?? 'No name',
        description: 'No description',
        from: event.start ?? DateTime.now(),
        to: event.end ?? DateTime.now().add(const Duration(hours: 2)),
        background: event.color.parseHex(),
        isAllDay: false,
      );

  EventEntity toEntity() => EventEntity(
        id: id,
        name: eventName,
        start: from,
        end: to,
        color: background.value.toRadixString(16),
      );

  factory Meeting.empty() => Meeting(
        id: -1,
        eventName: '',
        description: '',
        from: DateTime.now(),
        to: DateTime.now().add(const Duration(days: 1)),
        background: AppColors.primary,
        isAllDay: false,
      );

  bool isNotEmpty() => eventName.isNotEmpty && description.isNotEmpty;

  Meeting copyWith({
    int? id,
    String? eventName,
    String? description,
    DateTime? from,
    DateTime? to,
    Color? background,
    bool? isAllDay,
  }) {
    return Meeting(
      id: id ?? this.id,
      eventName: eventName ?? this.eventName,
      description: description ?? this.description,
      from: from ?? this.from,
      to: to ?? this.to,
      background: background ?? this.background,
      isAllDay: isAllDay ?? this.isAllDay,
    );
  }

  @override
  List<Object?> get props => [
        id,
        eventName,
        description,
        from,
        to,
        background,
        isAllDay,
      ];
}

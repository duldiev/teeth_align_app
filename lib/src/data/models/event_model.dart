import 'package:teeth_align_app/src/domain/entity/event_entity.dart';

class EventModel extends EventEntity {
  const EventModel({
    required super.id,
    required super.name,
    required super.start,
    required super.end,
    required super.color,
  });

  factory EventModel.fromJson(Map<String, dynamic> json) => EventModel(
        id: json['id'] as int?,
        name: json['title'] as String?,
        start: json['start'] != null ? DateTime.tryParse(json['start']) : null,
        end: json['end'] != null ? DateTime.tryParse(json['end']) : null,
        color: json['color'] as String?,
      );
}

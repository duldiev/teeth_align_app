import 'package:equatable/equatable.dart';

class EventEntity extends Equatable {
  final int? id;
  final String? name;
  final DateTime? start;
  final DateTime? end;
  final String? color;

  const EventEntity({
    required this.id,
    required this.name,
    required this.start,
    required this.end,
    required this.color,
  });

  factory EventEntity.empty() => const EventEntity(
        id: null,
        name: null,
        start: null,
        end: null,
        color: null,
      );
  @override
  List<Object?> get props => [
        id,
        name,
        start,
        end,
        color,
      ];
}

import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/domain/entity/event_entity.dart';

abstract class ICalendarRepository {
  Future<Either<Failure, List<EventEntity>>> getEvents(
    DateTime? start,
    DateTime? end,
  );

  Future<Either<Failure, Unit>> createEvent(EventEntity event);

  Future<Either<Failure, Unit>> editEvent(EventEntity event);

  Future<Either<Failure, Unit>> deleteEvent(int? id);
}

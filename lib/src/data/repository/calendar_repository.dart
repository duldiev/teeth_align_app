import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
import 'package:teeth_align_app/src/data/models/event_model.dart';
import 'package:teeth_align_app/src/domain/entity/event_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_calendar_repository.dart';

@LazySingleton(as: ICalendarRepository)
class CalendarRepository extends BaseClient implements ICalendarRepository {
  @override
  Future<Either<Failure, List<EventEntity>>> getEvents(
    DateTime? start,
    DateTime? end,
  ) async {
    final request = await call(
      RestMethod.get,
      '/api/v1/calendar/events',
      parametres: {
        'start': start?.toIso8601String(),
        'end': end?.toIso8601String(),
      },
    );
    return request.fold(
      (l) => Left(l),
      (r) => Right(
        (r as List).map((e) => EventModel.fromJson(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, Unit>> createEvent(EventEntity event) async {
    final request = await call(
      RestMethod.post,
      '/api/v1/calendar/events',
      body: {
        "title": event.name,
        "start": event.start?.toIso8601String(),
        "end": event.end?.toIso8601String(),
        "color": event.color,
      },
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> editEvent(EventEntity event) async {
    final request = await call(
      RestMethod.put,
      '/api/v1/calendar/events/${event.id}',
      body: {
        "title": event.name,
        "start": event.start?.toIso8601String(),
        "end": event.end?.toIso8601String(),
        "color": event.color,
      },
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> deleteEvent(int? id) async {
    final request = await call(
      RestMethod.delete,
      '/api/v1/calendar/events/$id',
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }
}

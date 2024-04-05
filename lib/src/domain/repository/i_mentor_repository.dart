import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';

abstract class IMentorRepository {
  Future<Either<Failure, List<MentorEntity>>> getMentors();

  Future<Either<Failure, List<DoctorEntity>>> getDoctors();
}

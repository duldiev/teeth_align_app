import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';

abstract class IDoctorRepository {
  Future<Either<Failure, List<PatientEntity>>> getPatients();

  Future<Either<Failure, PatientEntity>> getPatient(int patientId);

  Future<Either<Failure, List<MentorEntity>>> getMentors();
}

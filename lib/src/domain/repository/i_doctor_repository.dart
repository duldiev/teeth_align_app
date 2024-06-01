import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/data/body/doctor_case_body.dart';
import 'package:teeth_align_app/src/data/body/rate_doctor_body.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_short_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';

abstract class IDoctorRepository {
  Future<Either<Failure, List<PatientEntity>>> getPatients(int userId);

  Future<Either<Failure, List<MentorEntity>>> getMentors(int userId);

  Future<Either<Failure, DoctorEntity>> getDoctorById(int id);

  Future<Either<Failure, Unit>> createCase(int patientId, DoctorCaseBody body);

  Future<Either<Failure, List<DoctorShortEntity>>> getLeaderboard();

  Future<Either<Failure, Unit>> updateProfile(DoctorEntity body);

  Future<Either<Failure, Unit>> rateDoctor(int doctorId, RateDoctorBody body);
}

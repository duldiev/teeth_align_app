import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';

abstract class IAdminRepository {
  Future<Either<Failure, List<DoctorEntity>>> getAllDoctors();

  Future<Either<Failure, List<MentorEntity>>> getAllMentors();

  Future<Either<Failure, List<PatientEntity>>> getAllPatients();
}

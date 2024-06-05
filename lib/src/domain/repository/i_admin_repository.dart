import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/domain/entity/access_entity.dart';
import 'package:teeth_align_app/src/domain/entity/admin_entity.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';

abstract class IAdminRepository {
  Future<Either<Failure, List<DoctorEntity>>> getAllDoctors();

  Future<Either<Failure, List<MentorEntity>>> getAllMentors();

  Future<Either<Failure, List<PatientEntity>>> getAllPatients();

  Future<Either<Failure, Unit>> pairMentorAndDoctor(
    int mentorId,
    List<int> doctorIds,
  );

  Future<Either<Failure, AdminEntity>> getAdminById(int id);

  Future<Either<Failure, Unit>> updateProfile(AdminEntity body);

  Future<Either<Failure, String>> generateCode();

  Future<Either<Failure, List<AccessEntity>>> getAccesses();
}

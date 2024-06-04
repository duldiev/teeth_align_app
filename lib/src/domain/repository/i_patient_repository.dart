import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/data/body/initial_settings_body.dart';
import 'package:teeth_align_app/src/data/body/patient_case_body.dart';
import 'package:teeth_align_app/src/domain/entity/case_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';

abstract class IPatientRepository {
  Future<Either<Failure, PatientEntity>> getPatient(int id);

  Future<Either<Failure, List<CaseEntity>>> getPatientCase(
    int patientId,
  );

  Future<Either<Failure, Unit>> createPatientCase(
    int patientId,
    PatientCaseBody body,
  );

  Future<Either<Failure, Unit>> updateInitialSettings(
    InitialSettingsBody body,
  );

  Future<Either<Failure, Unit>> applyRefCode(String code);

  Future<Either<Failure, Unit>> updateProfile(PatientEntity body);
}

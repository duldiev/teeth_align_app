import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
import 'package:teeth_align_app/src/data/body/patient_case_body.dart';
import 'package:teeth_align_app/src/data/models/case_model.dart';
import 'package:teeth_align_app/src/data/models/patient_model.dart';
import 'package:teeth_align_app/src/domain/entity/case_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_patient_repository.dart';

@LazySingleton(as: IPatientRepository)
class PatientRepository extends BaseClient implements IPatientRepository {
  @override
  Future<Either<Failure, PatientEntity>> getPatient(int id) async {
    return (await call(
      RestMethod.get,
      '/api/v1/patient/$id',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(PatientModel.fromMap(r)),
    );
  }

  @override
  Future<Either<Failure, List<CaseEntity>>> getPatientCase(
    int patientId,
  ) async {
    return (await call(
      RestMethod.get,
      '/api/v1/patient/$patientId/case',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => CaseModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, Unit>> createPatientCase(
    int patientId,
    PatientCaseBody body,
  ) async {
    return (await call(
      RestMethod.post,
      '/api/v1/patient/$patientId/case',
      body: body.toDataMap(),
    ))
        .fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }
}
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
import 'package:teeth_align_app/src/data/body/doctor_case_body.dart';
import 'package:teeth_align_app/src/data/models/doctor_model.dart';
import 'package:teeth_align_app/src/data/models/mentor_model.dart';
import 'package:teeth_align_app/src/data/models/patient_model.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_doctor_repository.dart';

@LazySingleton(as: IDoctorRepository)
class DoctorRepository extends BaseClient implements IDoctorRepository {
  @override
  Future<Either<Failure, List<MentorEntity>>> getMentors(
    int userId,
  ) async {
    return (await call(
      RestMethod.get,
      '/api/v1/doctor/$userId/mentor',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => MentorModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<PatientEntity>>> getPatients(
    int userId,
  ) async {
    return (await call(
      RestMethod.get,
      '/api/v1/doctor/$userId/patient',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => PatientModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, DoctorEntity>> getDoctorById(int id) async {
    return (await call(
      RestMethod.get,
      '/api/v1/doctor/$id',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(DoctorModel.fromMap(r)),
    );
  }

  @override
  Future<Either<Failure, Unit>> createCase(
    int patientId,
    DoctorCaseBody body,
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

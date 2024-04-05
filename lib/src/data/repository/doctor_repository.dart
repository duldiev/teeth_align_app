import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
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
  Future<Either<Failure, List<DoctorEntity>>> getDoctors() async {
    return (await call(RestMethod.get, '/api/v1/doctor')).fold(
      (l) => Left(l),
      (r) => Right((r as List).map((e) => DoctorModel.fromMap(e)).toList()),
    );
  }

  @override
  Future<Either<Failure, List<MentorEntity>>> getMentors() async {
    return (await call(RestMethod.get, '/api/v1/doctor/mentors')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => MentorModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, PatientEntity>> getPatient(int patientId) async {
    return (await call(
      RestMethod.get,
      '/api/v1/doctor/patients/$patientId',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(PatientModel.fromMap(r)),
    );
  }

  @override
  Future<Either<Failure, List<PatientEntity>>> getPatients() async {
    return (await call(RestMethod.get, '/api/v1/doctor/patients')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['content'] as List).map((e) => PatientModel.fromMap(e)).toList(),
      ),
    );
  }
}

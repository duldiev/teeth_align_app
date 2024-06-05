import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
import 'package:teeth_align_app/src/data/models/access_model.dart';
import 'package:teeth_align_app/src/data/models/admin_model.dart';
import 'package:teeth_align_app/src/data/models/doctor_model.dart';
import 'package:teeth_align_app/src/data/models/mentor_model.dart';
import 'package:teeth_align_app/src/data/models/patient_model.dart';
import 'package:teeth_align_app/src/domain/entity/access_entity.dart';
import 'package:teeth_align_app/src/domain/entity/admin_entity.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_admin_repository.dart';

@LazySingleton(as: IAdminRepository)
class AdminRepository extends BaseClient implements IAdminRepository {
  @override
  Future<Either<Failure, List<DoctorEntity>>> getAllDoctors() async {
    return (await call(RestMethod.get, '/api/v1/doctor')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => DoctorModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<MentorEntity>>> getAllMentors() async {
    return (await call(RestMethod.get, '/api/v1/mentor')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => MentorModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<PatientEntity>>> getAllPatients() async {
    return (await call(
      RestMethod.get,
      '/api/v1/patient',
      parametres: {'page': 1, 'size': 20},
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => PatientModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, Unit>> pairMentorAndDoctor(
    int mentorId,
    List<int> doctorIds,
  ) async {
    return (await call(
      RestMethod.get,
      '/api/v1/mentor/assign',
      parametres: {
        'mentorId': mentorId,
        'doctorIds': doctorIds,
      },
    ))
        .fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, AdminEntity>> getAdminById(int id) async {
    return (await call(
      RestMethod.get,
      '/api/v1/admin/$id',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(AdminModel.fromMap(r)),
    );
  }

  @override
  Future<Either<Failure, Unit>> updateProfile(AdminEntity body) async {
    return (await call(
      RestMethod.put,
      '/api/v1/admin/profile',
      body: body.toMap(),
    ))
        .fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, String>> generateCode() async {
    return (await call(
      RestMethod.post,
      '/api/v1/doctor/access',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(r['access_code'] as String),
    );
  }

  @override
  Future<Either<Failure, List<AccessEntity>>> getAccesses() async {
    return (await call(
      RestMethod.get,
      '/api/v1/doctor/access',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => AccessModel.fromMap(e)).toList(),
      ),
    );
  }
}

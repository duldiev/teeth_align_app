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
import 'package:teeth_align_app/src/domain/repository/i_admin_repository.dart';

@LazySingleton(as: IAdminRepository)
class AdminRepository extends BaseClient implements IAdminRepository {
  @override
  Future<Either<Failure, List<DoctorEntity>>> getAllDoctors() async {
    return (await call(RestMethod.get, '/api/v1/doctor')).fold(
      (l) => Left(l),
      (r) => Right((r as List).map((e) => DoctorModel.fromMap(e)).toList()),
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
    return (await call(RestMethod.get, '/api/v1/patient')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['content'] as List).map((e) => PatientModel.fromMap(e)).toList(),
      ),
    );
  }
}

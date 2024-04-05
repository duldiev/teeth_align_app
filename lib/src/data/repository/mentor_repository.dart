import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
import 'package:teeth_align_app/src/data/models/doctor_model.dart';
import 'package:teeth_align_app/src/data/models/mentor_model.dart';
import 'package:teeth_align_app/src/domain/entity/doctor_entity.dart';
import 'package:teeth_align_app/src/domain/entity/mentor_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_mentor_repository.dart';

@LazySingleton(as: IMentorRepository)
class MentorRepository extends BaseClient implements IMentorRepository {
  @override
  Future<Either<Failure, List<DoctorEntity>>> getDoctors() async {
    return (await call(RestMethod.get, '/api/v1/mentor/doctor')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => DoctorModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, List<MentorEntity>>> getMentors() async {
    return (await call(RestMethod.get, '/api/v1/mentor')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => MentorModel.fromMap(e)).toList(),
      ),
    );
  }
}

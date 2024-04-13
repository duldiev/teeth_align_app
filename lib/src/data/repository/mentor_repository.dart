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
  Future<Either<Failure, List<DoctorEntity>>> getDoctors(int userId) async {
    return (await call(RestMethod.get, '/api/v1/mentor/$userId/doctor')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => DoctorModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, MentorEntity>> getMentorById(int id) async {
    return (await call(
      RestMethod.get,
      '/api/v1/mentor/$id',
    ))
        .fold(
      (l) => Left(l),
      (r) => Right(MentorModel.fromMap(r)),
    );
  }
}

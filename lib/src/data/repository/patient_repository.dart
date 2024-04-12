import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
import 'package:teeth_align_app/src/data/models/patient_model.dart';
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
}

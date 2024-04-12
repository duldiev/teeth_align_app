import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/domain/entity/patient_entity.dart';

abstract class IPatientRepository {
  Future<Either<Failure, PatientEntity>> getPatient(int id);
}

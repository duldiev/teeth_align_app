import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/domain/entity/profile_entity.dart';

abstract class IProfileRepository {
  Future<Either<Failure, ProfileEntity>> getProfile();

  Future<Either<Failure, Unit>> updateProfile({
    required ProfileEntity body,
  });

  Future<Either<Failure, Unit>> uploadAvatar(Uint8List image);
}

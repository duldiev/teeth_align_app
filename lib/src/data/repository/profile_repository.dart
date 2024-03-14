import 'dart:typed_data';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
import 'package:teeth_align_app/src/data/models/profile_model.dart';
import 'package:teeth_align_app/src/domain/entity/profile_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_profile_repository.dart';

@LazySingleton(as: IProfileRepository)
class ProfileRepository extends BaseClient implements IProfileRepository {
  @override
  Future<Either<Failure, ProfileEntity>> getProfile() async {
    final request = await call(
      RestMethod.get,
      '/api/v1/profile',
    );
    return request.fold(
      (l) => Left(l),
      (r) => Right(ProfileModel.fromMap(r)),
    );
  }

  @override
  Future<Either<Failure, Unit>> updateProfile({
    required ProfileEntity body,
  }) async {
    final request = await call(
      RestMethod.put,
      '/api/v1/profile',
      body: body.toMap(),
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> uploadAvatar(Uint8List image) async {
    final request = await call(
      RestMethod.put,
      '/api/v1/profile/avatar',
      body: FormData.fromMap({
        'image': MultipartFile.fromBytes(image, filename: 'avatar'),
      }),
      options: Options(
        headers: {'Content-Type': 'multipart/form-data'},
      ),
    );
    return request.fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }
}

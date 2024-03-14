import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/data/body/change_password_body.dart';
import 'package:teeth_align_app/src/data/body/register_body.dart';
import 'package:teeth_align_app/src/data/body/sign_in_body.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';

abstract class IAuthRepository {
  Future<Either<Failure, Unit>> signIn({required SignInBody body});

  Future<Either<Failure, Unit>> register({required RegisterBody body});

  Future<Either<Failure, AccountEntity>> getAccount();

  Future<Either<Failure, Unit>> changePassword({
    required ChangePasswordBody body,
  });

  Future<Either<Failure, Unit>> activate({
    required RegisterBody body,
  });

  Future<Either<Failure, Unit>> getAuthenticated();
}

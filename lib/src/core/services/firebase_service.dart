import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

typedef AppleSignInAccount = AuthorizationCredentialAppleID;

@lazySingleton
class FirebaseService {
  Future<Either<Exception, GoogleSignInAccount>> signInWithGoogle() async {
    try {
      GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email', 'profile']);

      if (await googleSignIn.isSignedIn()) await googleSignIn.signOut();

      final account = await googleSignIn.signIn().catchError((error) {
        return null;
      });

      if (account == null) {
        return Left(Exception('Sign-in aborted'));
      }

      return Right(account);
    } catch (e) {
      return Left(Exception('Error on sign-in'));
    }
  }

  Future<Either<Exception, AppleSignInAccount>> signInWithApple() async {
    try {
      if (await SignInWithApple.isAvailable()) {
        final credentials = await SignInWithApple.getAppleIDCredential(
          scopes: [
            AppleIDAuthorizationScopes.email,
            AppleIDAuthorizationScopes.fullName,
          ],
        );

        // final firstName = credentials.givenName;
        // final lastName = credentials.familyName;
        // appData.userFullName = '$firstName $lastName';

        return Right(credentials);
      }
      return const Left(
        SignInWithAppleNotSupportedException(message: 'Not available'),
      );
    } on SignInWithAppleNotSupportedException catch (e) {
      return Left(e);
    } on SignInWithAppleAuthorizationException catch (e) {
      return Left(e);
    } on Exception catch (e) {
      return Left(e);
    }
  }

  static Future<void> requestPermission() async {
    await FirebaseMessaging.instance.requestPermission();
  }

  static Future<String?> getDeviceToken() async {
    if (await FirebaseMessaging.instance.isSupported()) {
      return await FirebaseMessaging.instance.getToken();
    }
    return null;
  }
}

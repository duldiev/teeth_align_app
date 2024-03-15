import 'dart:io';
import 'package:equatable/equatable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';

class RegisterBody extends Equatable {
  final String username;
  final String email;
  final String code;
  final String imageUrl;
  final String langKey;
  final String password;
  final String passwordConfirm;
  final Role role;
  final String patientId;

  const RegisterBody({
    required this.username,
    required this.email,
    required this.imageUrl,
    required this.langKey,
    required this.password,
    required this.passwordConfirm,
    required this.code,
    required this.role,
    required this.patientId,
  });

  static RegisterBody empty() => RegisterBody(
        username: '',
        email: '',
        imageUrl: '',
        langKey: Platform.localeName,
        password: '',
        passwordConfirm: '',
        code: '',
        role: Role.patient,
        patientId: '',
      );

  Map<String, dynamic> toRegisterMap() => {
        'email': email,
        'langKey': langKey,
        'password': password,
        'passwordConfirm': passwordConfirm,
        'patientId': patientId,
      };

  Map<String, dynamic> toConfirmCodeMap() => {
        'key': code,
      }; // receives access token

  RegisterBody copyWith({
    String? username,
    String? email,
    String? imageUrl,
    String? langKey,
    String? password,
    String? passwordConfirm,
    String? code,
    Role? role,
    String? patientId,
  }) {
    return RegisterBody(
      username: username ?? this.username,
      email: email ?? this.email,
      imageUrl: imageUrl ?? this.imageUrl,
      langKey: langKey ?? this.langKey,
      password: password ?? this.password,
      passwordConfirm: passwordConfirm ?? this.passwordConfirm,
      code: code ?? this.code,
      role: role ?? this.role,
      patientId: patientId ?? this.patientId,
    );
  }

  @override
  List<Object?> get props => [
        username,
        email,
        code,
        imageUrl,
        langKey,
        password,
        passwordConfirm,
        role,
        patientId,
      ];
}

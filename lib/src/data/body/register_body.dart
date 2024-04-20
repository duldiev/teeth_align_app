import 'package:equatable/equatable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';

class RegisterBody extends Equatable {
  final String username;
  final String email;
  final String code;
  final String imageUrl;
  final String? langKey;
  final String password;
  final String passwordConfirm;
  final Role role;
  final String uniqueId;

  const RegisterBody({
    required this.username,
    required this.email,
    required this.imageUrl,
    required this.langKey,
    required this.password,
    required this.passwordConfirm,
    required this.code,
    required this.role,
    required this.uniqueId,
  });

  static RegisterBody empty() => const RegisterBody(
        username: '',
        email: '',
        imageUrl: '',
        langKey: null,
        password: '',
        passwordConfirm: '',
        code: '',
        role: Role.patient,
        uniqueId: '',
      );

  Map<String, dynamic> toRegisterMap() => {
        'role': role.name.toUpperCase(),
        'email': email,
        'langKey': langKey,
        'password': password,
        'passwordConfirm': passwordConfirm,
        'uniqueId': uniqueId,
      };

  Map<String, dynamic> toConfirmCodeMap() => {
        'email': email,
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
    String? uniqueId,
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
      uniqueId: uniqueId ?? this.uniqueId,
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
        uniqueId,
      ];
}

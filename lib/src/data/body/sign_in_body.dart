import 'package:equatable/equatable.dart';

class SignInBody extends Equatable {
  final String email;
  final String password;
  final bool rememberMe;

  const SignInBody({
    required this.email,
    required this.password,
    required this.rememberMe,
  });

  static SignInBody empty() => const SignInBody(
        email: '',
        password: '',
        rememberMe: false,
      );

  Map<String, dynamic> toMap() => {
        'username': email,
        'password': password,
      };

  SignInBody copyWith({
    String? email,
    String? password,
    bool? rememberMe,
  }) {
    return SignInBody(
      email: email ?? this.email,
      password: password ?? this.password,
      rememberMe: rememberMe ?? this.rememberMe,
    );
  }

  @override
  List<Object?> get props => [email, password, rememberMe];
}

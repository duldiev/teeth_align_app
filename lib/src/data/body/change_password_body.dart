import 'package:equatable/equatable.dart';

class ChangePasswordBody extends Equatable {
  final String currentPassword;
  final String newPassword;

  const ChangePasswordBody({
    required this.currentPassword,
    required this.newPassword,
  });

  ChangePasswordBody toMap() => ChangePasswordBody(
        currentPassword: currentPassword,
        newPassword: newPassword,
      );

  ChangePasswordBody copyWith({
    String? currentPassword,
    String? newPassword,
  }) {
    return ChangePasswordBody(
      currentPassword: currentPassword ?? this.currentPassword,
      newPassword: newPassword ?? this.newPassword,
    );
  }

  @override
  List<Object?> get props => [
        currentPassword,
        newPassword,
      ];
}

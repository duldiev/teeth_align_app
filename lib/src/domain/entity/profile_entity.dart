import 'package:equatable/equatable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/core/enums/user.dart';

class ProfileEntity extends Equatable {
  final String username;
  final String firstName;
  final String lastName;
  final DateTime? birthDate;
  final Gender? gender;
  final double weight;
  final double height;
  final String? bio;
  final String? imageUrl;
  final Role? role;

  const ProfileEntity({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.bio,
    required this.gender,
    required this.height,
    required this.weight,
    this.imageUrl,
    required this.role,
  });

  factory ProfileEntity.empty() => const ProfileEntity(
        username: '',
        firstName: '',
        lastName: '',
        birthDate: null,
        bio: null,
        gender: null,
        height: 0.0,
        weight: 0.0,
        imageUrl: null,
        role: null,
      );

  Map<String, dynamic> toMap() => {
        'username': username,
        'firstname': firstName,
        'lastname': lastName,
        'birthdate': birthDate?.toIso8601String(),
        'bio': bio,
        'gender': gender?.name.toUpperCase(),
        'height': height.toInt(),
        'weight': weight.toInt(),
        'role': role?.name.toUpperCase(),
      };

  ProfileEntity copyWith({
    String? username,
    String? firstName,
    String? lastName,
    DateTime? birthDate,
    Gender? gender,
    double? weight,
    double? height,
    String? bio,
    Role? role,
  }) {
    return ProfileEntity(
      username: username ?? this.username,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      birthDate: birthDate ?? this.birthDate,
      gender: gender ?? this.gender,
      weight: weight ?? this.weight,
      height: height ?? this.height,
      bio: bio ?? this.bio,
      role: role ?? this.role,
    );
  }

  @override
  List<Object?> get props => [
        username,
        firstName,
        lastName,
        birthDate,
        bio,
        gender,
        height,
        weight,
        imageUrl,
        role,
      ];
}

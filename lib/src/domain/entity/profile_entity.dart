import 'package:equatable/equatable.dart';
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
      );

  Map<String, dynamic> toMap() => {
        'username': username,
        'firstName': firstName,
        'lastName': lastName,
        'birthdate': birthDate?.toIso8601String(),
        'bio': bio,
        'gender': gender?.name.toUpperCase(),
        'height': height.toInt(),
        'weight': weight.toInt(),
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
      ];
}

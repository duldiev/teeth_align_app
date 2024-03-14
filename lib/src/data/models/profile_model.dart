import 'package:teeth_align_app/src/core/enums/user.dart';
import 'package:teeth_align_app/src/domain/entity/profile_entity.dart';

class ProfileModel extends ProfileEntity {
  const ProfileModel({
    required super.username,
    required super.firstName,
    required super.lastName,
    required super.bio,
    required super.gender,
    required super.height,
    required super.birthDate,
    required super.weight,
    super.imageUrl,
  });

  factory ProfileModel.fromMap(Map<String, dynamic> map) => ProfileModel(
        username: map['username'] as String? ?? 'username',
        firstName: map['firstName'] as String,
        lastName: map['lastName'] as String,
        bio: map['bio'] as String?,
        gender: map['gender'] != null
            ? Gender.fromString(map['gender'])
            : Gender.male,
        height: map['height'] as double,
        weight: map['weight'] as double,
        birthDate: map['birthDate'] != null
            ? DateTime.parse(map['birthDate'] as String)
            : null,
        imageUrl: map['imageUrl'] as String?,
      );
}

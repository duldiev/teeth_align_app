import 'package:equatable/equatable.dart';

class GalleryEntity extends Equatable {
  final int id;
  final int caseId;
  final String title;
  final String photoUrl;

  const GalleryEntity({
    required this.id,
    required this.caseId,
    required this.title,
    required this.photoUrl,
  });

  @override
  List<Object?> get props => [
        id,
        caseId,
        title,
        photoUrl,
      ];
}

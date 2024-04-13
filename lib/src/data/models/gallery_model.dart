import 'package:teeth_align_app/src/domain/entity/gallery_entity.dart';

class GalleryModel extends GalleryEntity {
  const GalleryModel({
    required super.id,
    required super.caseId,
    required super.title,
    required super.photoUrl,
  });

  factory GalleryModel.fromMap(Map<String, dynamic> map) => GalleryModel(
        id: map['id'] as int,
        caseId: map['caseId'] as int,
        title: map['title'] as String,
        photoUrl: map['photoUrl'] as String,
      );
}

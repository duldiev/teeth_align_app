import 'package:teeth_align_app/src/data/models/gallery_model.dart';
import 'package:teeth_align_app/src/domain/entity/case_entity.dart';

class CaseModel extends CaseEntity {
  const CaseModel({
    required super.id,
    required super.comment,
    required super.photoGallery,
  });

  factory CaseModel.fromMap(Map<String, dynamic> map) => CaseModel(
        id: map['id'] as int,
        comment: map['commentText'] as String,
        photoGallery: (map['photoGalleryDTO'] as List)
            .map((e) => GalleryModel.fromMap(e))
            .toList(),
      );
}

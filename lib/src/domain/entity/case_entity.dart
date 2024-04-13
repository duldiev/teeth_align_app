import 'package:equatable/equatable.dart';

import 'package:teeth_align_app/src/domain/entity/gallery_entity.dart';

class CaseEntity extends Equatable {
  final int id;
  final String comment;
  final List<GalleryEntity> photoGallery;

  const CaseEntity({
    required this.id,
    required this.comment,
    required this.photoGallery,
  });

  @override
  List<Object?> get props => [
        id,
        comment,
        photoGallery,
      ];
}

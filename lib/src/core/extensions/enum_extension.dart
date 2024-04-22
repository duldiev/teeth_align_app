import 'package:flutter/material.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/presentation/report/core/enum.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

extension CaseExtension on CaseField {
  Image get image => switch (this) {
        CaseField.leftOcc => Assets.images.leftOcc,
        CaseField.frontOcc => Assets.images.frontOcc,
        CaseField.rightOcc => Assets.images.rightOcc,
        CaseField.maxillaryOcc => Assets.images.maxilaryOcc,
        CaseField.mandibularOcc => Assets.images.mandibularOcc,
        CaseField.profile => Assets.images.profile,
        CaseField.frontal => Assets.images.frontal,
        CaseField.frontalDynamic => Assets.images.frontalDynamic,
      }
          .image(
        height: 150,
        fit: BoxFit.cover,
        color: AppColors.grey,
        alignment: Alignment.center,
        colorBlendMode: BlendMode.color,
      );
}

extension PosstTypeExtension on PostType {
  String get localize => switch (this) {
        PostType.post => 'Пост',
        PostType.forum => 'Форум',
        PostType.conference => 'Конференция',
      };
}

import 'package:flutter/material.dart';
import 'package:teeth_align_app/gen/assets.gen.dart';
import 'package:teeth_align_app/src/presentation/report/core/enum.dart';
import 'package:teeth_align_app/src/shared/colors/app_colors.dart';

extension CaseExtension on CaseField {
  Image get image => switch (this) {
        CaseField.leftOcc => Assets.images.leftOcc,
        CaseField.frontOcc => Assets.images.frontOcc,
        CaseField.rightOcc => Assets.images.rightOcc,
        CaseField.maxillaryOcc => Assets.images.maxilaryOcc,
        CaseField.mandibularOcc => Assets.images.mandibularOcc,
        CaseField.profile => Assets.images.leftOcc,
        CaseField.frontal => Assets.images.leftOcc,
        CaseField.frontalDynamic => Assets.images.leftOcc,
      }
          .image(
        height: 100,
        fit: BoxFit.cover,
        color: AppColors.grey,
        colorBlendMode: BlendMode.color,
      );
}

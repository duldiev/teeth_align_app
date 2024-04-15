import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:teeth_align_app/src/presentation/report/core/enum.dart';

class DoctorCaseBody extends Equatable {
  final String? comment;
  final Uint8List? leftOcc;
  final Uint8List? frontOcc;
  final Uint8List? rightOcc;
  final Uint8List? maxillaryOcc;
  final Uint8List? mandibularOcc;
  final Uint8List? profile;
  final Uint8List? frontal;
  final Uint8List? frontalDynamic;

  const DoctorCaseBody({
    this.comment,
    this.leftOcc,
    this.frontOcc,
    this.rightOcc,
    this.maxillaryOcc,
    this.mandibularOcc,
    this.profile,
    this.frontal,
    this.frontalDynamic,
  });

  FormData toDataMap() => FormData.fromMap({
        'comment': comment,
        'leftOcc': leftOcc != null
            ? MultipartFile.fromBytes(leftOcc!, filename: 'leftOcc')
            : null,
        'frontOcc': frontOcc != null
            ? MultipartFile.fromBytes(frontOcc!, filename: 'frontOcc')
            : null,
        'rightOcc': rightOcc != null
            ? MultipartFile.fromBytes(rightOcc!, filename: 'rightOcc')
            : null,
        'maxillaryOcc': maxillaryOcc != null
            ? MultipartFile.fromBytes(maxillaryOcc!, filename: 'maxillaryOcc')
            : null,
        'mandibularOcc': mandibularOcc != null
            ? MultipartFile.fromBytes(mandibularOcc!, filename: 'mandibularOcc')
            : null,
        'profile': profile != null
            ? MultipartFile.fromBytes(profile!, filename: 'profile')
            : null,
        'frontal': frontal != null
            ? MultipartFile.fromBytes(frontal!, filename: 'frontal')
            : null,
        'frontalDynamic': frontalDynamic != null
            ? MultipartFile.fromBytes(frontalDynamic!,
                filename: 'frontalDynamic')
            : null,
      });

  factory DoctorCaseBody.empty() => const DoctorCaseBody();

  @override
  List<Object?> get props => [
        comment,
        leftOcc,
        frontOcc,
        rightOcc,
        maxillaryOcc,
        mandibularOcc,
        profile,
        frontal,
        frontalDynamic,
      ];

  DoctorCaseBody changeField(CaseField field, Uint8List bytes) =>
      switch (field) {
        CaseField.leftOcc => copyWith(leftOcc: bytes),
        CaseField.frontOcc => copyWith(frontOcc: bytes),
        CaseField.rightOcc => copyWith(rightOcc: bytes),
        CaseField.maxillaryOcc => copyWith(maxillaryOcc: bytes),
        CaseField.mandibularOcc => copyWith(mandibularOcc: bytes),
        CaseField.profile => copyWith(profile: bytes),
        CaseField.frontal => copyWith(frontOcc: bytes),
        CaseField.frontalDynamic => copyWith(frontalDynamic: bytes),
      };

  DoctorCaseBody copyWith({
    String? comment,
    Uint8List? leftOcc,
    Uint8List? frontOcc,
    Uint8List? rightOcc,
    Uint8List? maxillaryOcc,
    Uint8List? mandibularOcc,
    Uint8List? profile,
    Uint8List? frontal,
    Uint8List? frontalDynamic,
  }) {
    return DoctorCaseBody(
      comment: comment ?? this.comment,
      leftOcc: leftOcc ?? this.leftOcc,
      frontOcc: frontOcc ?? this.frontOcc,
      rightOcc: rightOcc ?? this.rightOcc,
      maxillaryOcc: maxillaryOcc ?? this.maxillaryOcc,
      mandibularOcc: mandibularOcc ?? this.mandibularOcc,
      profile: profile ?? this.profile,
      frontal: frontal ?? this.frontal,
      frontalDynamic: frontalDynamic ?? this.frontalDynamic,
    );
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class PatientCaseBody extends Equatable {
  final String? comment;
  final Uint8List? front;
  final Uint8List? right;
  final Uint8List? left;

  const PatientCaseBody({
    required this.comment,
    required this.front,
    required this.right,
    required this.left,
  });

  FormData toDataMap() => FormData.fromMap({
        'comment': comment,
        'front': front != null
            ? MultipartFile.fromBytes(front!, filename: 'front')
            : null,
        'right': right != null
            ? MultipartFile.fromBytes(right!, filename: 'right')
            : null,
        'left': left != null
            ? MultipartFile.fromBytes(left!, filename: 'left')
            : null,
      });

  factory PatientCaseBody.empty() => const PatientCaseBody(
        comment: null,
        front: null,
        right: null,
        left: null,
      );

  PatientCaseBody copyWith({
    String? comment,
    Uint8List? front,
    Uint8List? right,
    Uint8List? left,
  }) {
    return PatientCaseBody(
      comment: comment ?? this.comment,
      front: front ?? this.front,
      right: right ?? this.right,
      left: left ?? this.left,
    );
  }

  @override
  List<Object?> get props => [
        comment,
        front,
        right,
        left,
      ];
}

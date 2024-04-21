import 'package:equatable/equatable.dart';

class RateDoctorBody extends Equatable {
  final int stars;
  final bool onlineExamination;
  final bool consultation;
  final bool medicineInstruction;
  final String comment;

  const RateDoctorBody({
    required this.stars,
    required this.onlineExamination,
    required this.consultation,
    required this.medicineInstruction,
    required this.comment,
  });

  factory RateDoctorBody.empty() => const RateDoctorBody(
        stars: 0,
        onlineExamination: false,
        consultation: false,
        medicineInstruction: false,
        comment: '',
      );

  Map<String, dynamic> toMap() => {
        'stars': stars,
        'onLineExamination': onlineExamination,
        'consultation': consultation,
        'medicineInstruction': medicineInstruction,
        'comment': comment,
      };

  RateDoctorBody copyWith({
    int? stars,
    bool? onlineExamination,
    bool? consultation,
    bool? medicineInstruction,
    String? comment,
  }) {
    return RateDoctorBody(
      stars: stars ?? this.stars,
      onlineExamination: onlineExamination ?? this.onlineExamination,
      consultation: consultation ?? this.consultation,
      medicineInstruction: medicineInstruction ?? this.medicineInstruction,
      comment: comment ?? this.comment,
    );
  }

  @override
  List<Object?> get props => [
        stars,
        onlineExamination,
        consultation,
        medicineInstruction,
        comment,
      ];
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

import 'package:equatable/equatable.dart';

import 'package:teeth_align_app/src/core/enums/basics.dart';

enum CreatePostBodyField {
  image,
  text,
  type,
}

class CreatePostBody extends Equatable {
  final Uint8List image;
  final String text;
  final PostType type;

  const CreatePostBody({
    required this.image,
    required this.text,
    required this.type,
  });

  CreatePostBody changeField(
    CreatePostBodyField field,
    dynamic value,
  ) =>
      switch (field) {
        CreatePostBodyField.image => copyWith(image: value),
        CreatePostBodyField.text => copyWith(text: value),
        CreatePostBodyField.type => copyWith(type: value),
      };

  Map<String, dynamic> toMap() => {
        'image': image,
        'text': text,
        'type': type,
      };

  @override
  List<Object?> get props => [
        image,
        text,
        type,
      ];

  CreatePostBody copyWith({
    Uint8List? image,
    String? text,
    PostType? type,
  }) {
    return CreatePostBody(
      image: image ?? this.image,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}

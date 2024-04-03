// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:uuid/uuid.dart';

typedef CPBF = CreatePostBodyField;

enum CreatePostBodyField {
  images,
  text,
  type,
}

class CreatePostBody extends Equatable {
  final List<Uint8List?>? images;
  final String? text;
  final PostType? type;

  const CreatePostBody({
    required this.images,
    required this.text,
    required this.type,
  });

  factory CreatePostBody.empty() => const CreatePostBody(
        images: null,
        text: null,
        type: null,
      );

  CreatePostBody changeField(
    CreatePostBodyField field,
    dynamic value,
  ) =>
      switch (field) {
        CreatePostBodyField.images => copyWith(images: value),
        CreatePostBodyField.text => copyWith(text: value),
        CreatePostBodyField.type => copyWith(type: value),
      };

  Map<String, dynamic> toMap() => {
        'images': images
            ?.map((image) => image != null
                ? MultipartFile.fromBytes(
                    image,
                    filename: const Uuid().v1(),
                  )
                : null)
            .toList(),
        'text': text,
        'type': type,
      };

  @override
  List<Object?> get props => [
        images,
        text,
        type,
      ];

  CreatePostBody copyWith({
    List<Uint8List>? images,
    String? text,
    PostType? type,
  }) {
    return CreatePostBody(
      images: images ?? this.images,
      text: text ?? this.text,
      type: type ?? this.type,
    );
  }
}

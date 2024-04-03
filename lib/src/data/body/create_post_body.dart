import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:uuid/uuid.dart';

typedef CPBF = CreatePostBodyField;

enum CreatePostBodyField {
  images,
  text,
  type,
}

class CreatePostBody extends Equatable {
  final List<XFile?>? images;
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

  Future<Map<String, dynamic>> toMap() async {
    List<Uint8List?> imagesInBytes = [];
    for (int i = 0; i < (images?.length ?? 0); i++) {
      final byte = await images![i]?.readAsBytes();
      imagesInBytes.add(byte);
    }
    return {
      'images': imagesInBytes.map((image) {
        if (image == null) return null;
        return MultipartFile.fromBytes(
          image,
          filename: const Uuid().v1(),
        );
      }).toList(),
      'text': text,
      'type': type?.name.toUpperCase(),
    };
  }

  @override
  List<Object?> get props => [
        images,
        text,
        type,
      ];

  CreatePostBody copyWith({
    List<XFile?>? images,
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

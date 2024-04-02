import 'package:equatable/equatable.dart';

class PaginationParams extends Equatable {
  final int page;
  final int size;

  const PaginationParams({
    this.page = 0,
    this.size = 10,
  });

  Map<String, dynamic> toMap() => {
        'page': page,
        'size': size,
      };

  @override
  List<Object?> get props => [
        page,
        size,
      ];

  PaginationParams copyWith({
    int? page,
    int? size,
  }) {
    return PaginationParams(
      page: page ?? this.page,
      size: size ?? this.size,
    );
  }
}

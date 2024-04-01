import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/core/services/base_client.dart';
import 'package:teeth_align_app/src/data/body/create_post_body.dart';
import 'package:teeth_align_app/src/data/models/comment_model.dart';
import 'package:teeth_align_app/src/data/models/social_model.dart';
import 'package:teeth_align_app/src/domain/entity/comment_entity.dart';
import 'package:teeth_align_app/src/domain/entity/post_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_social_repository.dart';

@LazySingleton(as: ISocialRepository)
class SocialRepository extends BaseClient implements ISocialRepository {
  @override
  Future<Either<Failure, List<PostEntity>>> getPosts() async {
    return (await call(RestMethod.get, '/api/v1/post')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => PostModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, PostEntity>> getPost(int id) async {
    return (await call(RestMethod.get, '/api/v1/post/$id')).fold(
      (l) => Left(l),
      (r) => Right(PostModel.fromMap(r)),
    );
  }

  @override
  Future<Either<Failure, Unit>> createPost(CreatePostBody body) async {
    return (await call(
      RestMethod.post,
      '/api/v1/post',
      body: body.toMap(),
    ))
        .fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> deletePost(int id) async {
    return (await call(RestMethod.delete, '/api/v1/post/$id')).fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, List<CommentEntity>>> getPostComments(int id) async {
    return (await call(RestMethod.get, '/api/v1/post/$id/comment')).fold(
      (l) => Left(l),
      (r) => Right(
        (r['items'] as List).map((e) => CommentModel.fromMap(e)).toList(),
      ),
    );
  }

  @override
  Future<Either<Failure, Unit>> deleteComment(int id) async {
    return (await call(RestMethod.delete, '/api/v1/post/comment/$id')).fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> likePost(int id) async {
    return (await call(RestMethod.post, '/api/v1/post/$id/like')).fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }

  @override
  Future<Either<Failure, Unit>> createComment(int postId, String text) async {
    return (await call(RestMethod.post, '/api/v1/post/$postId/comment')).fold(
      (l) => Left(l),
      (r) => const Right(unit),
    );
  }
}

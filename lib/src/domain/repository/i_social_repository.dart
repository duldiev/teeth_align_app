import 'package:dartz/dartz.dart';
import 'package:teeth_align_app/src/core/exceptions/failure.dart';
import 'package:teeth_align_app/src/data/body/create_post_body.dart';
import 'package:teeth_align_app/src/data/params/pagination_params.dart';
import 'package:teeth_align_app/src/domain/entity/comment_entity.dart';
import 'package:teeth_align_app/src/domain/entity/post_entity.dart';

abstract class ISocialRepository {
  Future<Either<Failure, List<PostEntity>>> getPosts([
    PaginationParams? params,
  ]);

  Future<Either<Failure, PostEntity>> getPost(int id);

  Future<Either<Failure, PostEntity>> createPost(CreatePostBody body);

  Future<Either<Failure, Unit>> deletePost(int id);

  Future<Either<Failure, List<CommentEntity>>> getPostComments(
    int id, [
    PaginationParams? params,
  ]);

  Future<Either<Failure, CommentEntity>> createComment(int postId, String text);

  Future<Either<Failure, Unit>> deleteComment(int id);

  Future<Either<Failure, Unit>> likePost(int id);
}

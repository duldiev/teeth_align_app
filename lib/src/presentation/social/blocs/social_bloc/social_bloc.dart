import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teeth_align_app/src/core/enums/basics.dart';
import 'package:teeth_align_app/src/data/body/create_post_body.dart';
import 'package:teeth_align_app/src/data/params/pagination_params.dart';
import 'package:teeth_align_app/src/domain/entity/account_entity.dart';
import 'package:teeth_align_app/src/domain/entity/comment_entity.dart';
import 'package:teeth_align_app/src/domain/entity/post_entity.dart';
import 'package:teeth_align_app/src/domain/repository/i_social_repository.dart';

part 'social_event.dart';
part 'social_state.dart';
part 'social_bloc.freezed.dart';

@injectable
class SocialBloc extends Bloc<SocialEvent, SocialState> {
  final ISocialRepository repository;

  SocialBloc({required this.repository}) : super(SocialState()) {
    on<GetPosts>(onGetPosts);
    on<GetPost>(onGetPost);
    on<CreatePost>(onCreatePost);
    on<ChangeCreatePostbody>(onChangeCreatePostbody);
    on<DeletePost>(onDeletePost);
    on<CreateComment>(onCreateComment);
    on<GetPostComments>(onGetPostComments);
    on<LikePost>(onLikePost);
  }

  Future<void> onGetPosts(
    GetPosts event,
    Emitter<SocialState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    final post = PostEntity(
      id: 1,
      author: AccountEntity.empty(),
      text:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
      type: PostType.post,
      likes: 100,
      imageUrl:
          'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
      isLiked: true,
    );

    (await repository.getPosts(const PaginationParams())).fold(
      (l) => emit(state.copyWith(status: LoadStatus.failed, posts: [post])),
      (r) => emit(state.copyWith(
        status: LoadStatus.success,
        posts: [...r, post],
      )),
    );
  }

  Future<void> onGetPost(
    GetPost event,
    Emitter<SocialState> emit,
  ) async {
    emit(state.copyWith(status: LoadStatus.loading));

    (await repository.getPost(event.id)).fold(
      (l) => emit(state.copyWith(status: LoadStatus.failed)),
      (r) => emit(state.copyWith(status: LoadStatus.success, post: r)),
    );
  }

  Future<void> onCreatePost(
    CreatePost event,
    Emitter<SocialState> emit,
  ) async {
    if (state.createPostBody == null) return;

    emit(state.copyWith(status: LoadStatus.loading));

    (await repository.createPost(state.createPostBody!)).fold(
      (l) => emit(state.copyWith(createPostStatus: LoadStatus.failed)),
      (r) => emit(state.copyWith(createPostStatus: LoadStatus.success)),
    );
  }

  void onChangeCreatePostbody(
    ChangeCreatePostbody event,
    Emitter<SocialState> emit,
  ) async {
    emit(state.copyWith(
      createPostBody: state.createPostBody?.changeField(
        event.field,
        event.value,
      ),
    ));
  }

  Future<void> onDeletePost(
    DeletePost event,
    Emitter<SocialState> emit,
  ) async {
    emit(state.copyWith(deleteStatus: LoadStatus.loading));

    (await repository.deletePost(event.id)).fold(
      (l) => emit(state.copyWith(deleteStatus: LoadStatus.failed)),
      (r) => emit(state.copyWith(deleteStatus: LoadStatus.success)),
    );
  }

  Future<void> onCreateComment(
    CreateComment event,
    Emitter<SocialState> emit,
  ) async {
    emit(state.copyWith(createCommentStatus: LoadStatus.loading));

    (await repository.createComment(event.postId, event.text)).fold(
      (l) => emit(state.copyWith(createCommentStatus: LoadStatus.failed)),
      (r) => emit(state.copyWith(createCommentStatus: LoadStatus.success)),
    );
  }

  Future<void> onGetPostComments(
    GetPostComments event,
    Emitter<SocialState> emit,
  ) async {
    emit(state.copyWith(postCommentsStatus: LoadStatus.loading));

    (await repository.getPostComments(event.id)).fold(
      (l) => emit(state.copyWith(postCommentsStatus: LoadStatus.failed)),
      (r) => emit(state.copyWith(
        postCommentsStatus: LoadStatus.success,
        comments: r,
      )),
    );
  }

  Future<void> onLikePost(
    LikePost event,
    Emitter<SocialState> emit,
  ) async {
    emit(state.copyWith(likeStatus: LoadStatus.loading));

    (await repository.likePost(event.id)).fold(
      (l) => emit(state.copyWith(likeStatus: LoadStatus.failed)),
      (r) => emit(state.copyWith(likeStatus: LoadStatus.success)),
    );
  }
}

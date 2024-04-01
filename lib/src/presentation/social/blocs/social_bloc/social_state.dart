part of 'social_bloc.dart';

@freezed
class SocialState with _$SocialState {
  factory SocialState({
    @Default(LoadStatus.initial) LoadStatus status,
    @Default(LoadStatus.initial) LoadStatus postCommentsStatus,
    @Default(LoadStatus.initial) LoadStatus createCommentStatus,
    @Default(LoadStatus.initial) LoadStatus createPostStatus,
    @Default(LoadStatus.initial) LoadStatus deleteStatus,
    @Default([]) List<PostEntity> posts,
    @Default(null) PostEntity? post,
    @Default([]) List<CommentEntity> comments,
    @Default(null) CreatePostBody? createPostBody,
  }) = _SocialState;

  const SocialState._();
}

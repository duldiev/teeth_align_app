part of 'social_bloc.dart';

@freezed
class SocialEvent with _$SocialEvent {
  const factory SocialEvent.getPosts() = GetPosts;

  const factory SocialEvent.updatePosts(PostEntity createdPost) = UpdatePosts;

  const factory SocialEvent.getPost(int id) = GetPost;

  const factory SocialEvent.createPost() = CreatePost;

  const factory SocialEvent.changeCreatePostbody(
    CreatePostBodyField field, [
    dynamic value,
  ]) = ChangeCreatePostbody;

  const factory SocialEvent.deletePost(int id) = DeletePost;

  const factory SocialEvent.createComment(
    int postId,
    String text,
  ) = CreateComment;

  const factory SocialEvent.getPostComments(int id) = GetPostComments;

  const factory SocialEvent.likePost(int id, [bool? unlike]) = LikePost;

  const factory SocialEvent.removeImage(XFile iamge) = RemoveImage;
}

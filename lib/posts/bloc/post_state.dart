part of 'post_bloc.dart';

enum PostStatus {
  initial,
  success,
  failure,
}

class PostState extends Equatable {
  const PostState({
    this.posts = const <Post>[],
    this.status = PostStatus.initial,
    this.hasReachedMax = false,
  });

  final List<Post> posts;
  final PostStatus status;
  final bool hasReachedMax;

  PostState copyWith({
    PostStatus? status,
    List<Post>? posts,
    bool? hasReachedMax,
  }) {
    return PostState(
      status: status ?? this.status,
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  String toString() {
    return '''PostState {status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length},}''';
  }

  @override
  List<Object> get props => [
        status,
        posts,
        hasReachedMax
      ];
}

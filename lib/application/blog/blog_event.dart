part of 'blog_bloc.dart';

@freezed
class BlogEvent with _$BlogEvent{
  const factory BlogEvent.watchAllBlogStarted(String? filter) = _watchAllBlogStarted;
  const factory BlogEvent.blogItemReceived(
      Either<ValueFailure, List<Blog>> failureOrItems) = _BlogItemReceived;
}

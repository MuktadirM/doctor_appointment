part of 'add_blog_bloc.dart';

@freezed
class AddBlogEvent with _$AddBlogEvent{
  const factory AddBlogEvent.initialization() = _Initialization;
  const factory AddBlogEvent.addBlog(Blog blog) = _AddBlog;
}

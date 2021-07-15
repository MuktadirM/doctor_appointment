part of 'blog_bloc.dart';

@freezed
class BlogState with _$BlogState{
  const factory BlogState.initial() = _Initial;
  const factory BlogState.loadInProgress() = _LoadInProgress;
  const factory BlogState.loadSuccess(List<Blog> items) = _LoadSuccess;
  const factory BlogState.loadFailure(ValueFailure failure) =
  _LoadFailure;
}


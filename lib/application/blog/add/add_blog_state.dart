part of 'add_blog_bloc.dart';

@freezed
class AddBlogState with _$AddBlogState {
  const factory AddBlogState.initial() = _Initial;
  const factory AddBlogState.addInProgress() = _AddInProgress;
  const factory AddBlogState.addSuccess() = _AddSuccess;
  const factory AddBlogState.failToAdd(ValueFailure failure) = _FailToAdd;
}

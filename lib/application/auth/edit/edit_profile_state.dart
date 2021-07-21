part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState{
  const factory EditProfileState.initial() = _Initial;
  const factory EditProfileState.actionInProgress() = _ActionInProgress;
  const factory EditProfileState.actionSuccess() = _ActionSuccess;
  const factory EditProfileState.actionFailed(ValueFailure failure) = _ActionFailed;
}


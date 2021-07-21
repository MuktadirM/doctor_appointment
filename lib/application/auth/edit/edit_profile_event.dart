part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent{
  const factory EditProfileEvent.updateProfile(File? file, Profile profile) = _UpdateProfile;
}

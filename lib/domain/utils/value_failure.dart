import 'package:freezed_annotation/freezed_annotation.dart';

part 'value_failure.freezed.dart';

@freezed
class ValueFailure with _$ValueFailure {
  const factory ValueFailure.unexpected() = _Unexpected;
  const factory ValueFailure.insufficientPermission() = _InsufficientPermission;
  const factory ValueFailure.attachmentNotFound() = _AttachmentNotFound;
  const factory ValueFailure.invalidFileFormat() = _InvalidFileFormat;
  const factory ValueFailure.unableToUpdate() = _UnableToUpdate;
}


import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:flutter/material.dart';

class LoadFailure extends StatelessWidget {
  final ValueFailure failure;
  const LoadFailure({Key? key, required this.failure}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: failure.map(
            unexpected: (_) => _failure('Unexpected'),
            insufficientPermission: (_) => _failure('insufficientPermission'),
            attachmentNotFound: (_) => _failure('attachmentNotFound'),
            invalidFileFormat: (_) => _failure('invalidFileFormat'),
            unableToUpdate: (_) => _failure('unableToUpdate'),
      ),
    );
  }
}

Widget _failure(message){
  return Text(message);
}

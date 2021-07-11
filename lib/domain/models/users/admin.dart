import 'package:doctor_appointment/domain/models/core/Profile.dart';
import 'package:doctor_appointment/domain/utils/user_type.dart';

class Admin extends Profile {
  Admin(String name, String email, UserType type, String phone)
      : super(name:name, email:email, type:type, phone: phone);
}

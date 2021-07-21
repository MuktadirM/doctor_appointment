import 'dart:io';

import 'package:doctor_appointment/application/auth/edit/edit_profile_bloc.dart';
import 'package:doctor_appointment/domain/models/core/profile.dart';
import 'package:doctor_appointment/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  final Profile profile;

  const EditProfile(this.profile, {Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String name = '';
  String phone = '';

  ImagePicker _picker = ImagePicker();
  File? image;

  Future<void> choseImage() async {
    final pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        image = File(pickedFile.path);
      } else {
        print('Please try again');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    name = widget.profile.name!;
    phone = widget.profile.phone!;
    return BlocProvider(
      create: (context) => getIt<EditProfileBloc>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('Edit Profile'),
        ),
        body: SafeArea(
          child: BlocListener<EditProfileBloc, EditProfileState>(
              listener: (context, state) {},
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: SizedBox(
                        height: 200,
                        child: image == null
                            ? Container(
                          height: 200,
                          width: 200,
                          child: CircleAvatar(
                            child: ClipOval(
                              child: Image.network(
                                widget.profile.image!, width: 200,
                                height: 200,
                                fit: BoxFit.cover,),
                            ),
                          ),
                        )
                            : Container(
                          height: 200,
                          width: 200,
                          child: CircleAvatar(
                            child: ClipOval(
                                child: Image.file(image!, width: 200,
                                  height: 200,
                                  fit: BoxFit.cover,)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: Size(double.infinity,
                            40), // double.infinity is the width and 30 is the height
                      ),
                      onPressed: () async {
                        await choseImage();
                      },
                      child: Text('Add Image'),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60.0,
                    width: 320,
                    child: TextFormField(
                      initialValue: widget.profile.name!,
                      onChanged: (txt) {
                        name = txt;
                      },
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(
                          Icons.perm_contact_cal,
                        ),
                        hintText: 'Enter your full name',
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60.0,
                    width: 320,
                    child: TextFormField(
                      onChanged: (txt) {
                        name = txt;
                      },
                      initialValue: widget.profile.phone!,
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        prefixIcon: Icon(
                          Icons.phone,
                        ),
                        hintText: 'Enter your phone number',
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BlocBuilder<EditProfileBloc, EditProfileState>(
                      builder: (context, state) {
                        return ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(double.infinity,
                                40), // double.infinity is the width and 30 is the height
                          ),
                          onPressed: () {
                            Profile profile = widget.profile.copyWith(
                                name: name, phone: phone);
                            context.read<EditProfileBloc>().add(
                                EditProfileEvent.updateProfile(image, profile));
                          },
                          child: Text('Update Profile'),
                        );
                      },
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}

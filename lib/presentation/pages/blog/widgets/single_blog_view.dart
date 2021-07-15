import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/presentation/utils/time_diff.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleBlogView extends StatelessWidget {
  final Blog _blog;
  const SingleBlogView(this._blog, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var doctor = _blog.doctor!;
    return Scaffold(
      appBar: AppBar(
        title: Text(_blog.title),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              doctor.image!,
              fit: BoxFit.contain,
              height: 300,
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _blog.title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Blog post by ' + _blog.doctor!.name!,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Text(TimeDiffForHuman.convert(_blog.createdAt.toString())),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Content body : ' + _blog.description,
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

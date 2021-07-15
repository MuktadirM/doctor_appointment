import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:flutter/material.dart';

class UserBlogCard extends StatelessWidget {
  final Blog blog;
  final Function callback;

  const UserBlogCard(this.callback, {required this.blog,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => { callback() },
      child: Container(
        height: 135,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.network(
                blog.doctor!.image!,
                fit: BoxFit.cover,
                height: 144,
                width: 200,
              ),
            ),
            Container(
              height: 144,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    offset: Offset(0, 0),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 8.0,
              left: 10.0,
              right: 10.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    blog.title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    blog.doctor!.name!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Text(
                    enumTypeToString(blog.doctor!.docType),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  static String enumTypeToString<T>(T type) =>
      type.toString().split(".")[1].toUpperCase();
}

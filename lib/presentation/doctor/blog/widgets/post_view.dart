import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/presentation/utils/time_diff.dart';
import 'package:doctor_appointment/presentation/utils/utils.dart';
import 'package:flutter/material.dart';

class BlogPostView extends StatelessWidget {
  final Function callBack;
  final Blog? blog;

  const BlogPostView({required this.callBack, this.blog, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: ListTile(
        tileColor: Colors.white70,
        leading: CircleAvatar(
          backgroundColor: Util.randomColor(),
          child: Text(
            getInitial(blog!.title),
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30),
          ),
        ),
        title: Text(blog!.title,
            style: TextStyle(fontWeight: FontWeight.w500)),
        subtitle: Text(TimeDiffForHuman.convert(blog!.createdAt.toString())),
        onTap: ()=> callBack(),
      ),
    );
  }
  String getInitial(String sen){
    return sen.characters.first.toUpperCase();
  }
}

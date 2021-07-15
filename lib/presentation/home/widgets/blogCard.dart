import 'package:doctor_appointment/application/blog/blog_bloc.dart';
import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/injection.dart';
import 'package:doctor_appointment/presentation/pages/blog/widgets/single_blog_view.dart';
import 'package:doctor_appointment/presentation/pages/blog/widgets/user_blog_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<BlogBloc>()..add(BlogEvent.watchAllBlogStarted(null)),
      child: BlocBuilder<BlogBloc, BlogState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => _Initial(),
            loadInProgress: (_) => _LoadInProgress(),
            loadSuccess: (data) => _Successful(
              posts: data.items.take(6).toList(),
            ),
            loadFailure: (value) => _LoadFailure(),
          );
        },
      ),
    );
  }
}

class _LoadInProgress extends StatelessWidget {
  const _LoadInProgress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _Initial extends StatelessWidget {
  const _Initial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _LoadFailure extends StatelessWidget {
  const _LoadFailure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class _Successful extends StatelessWidget {
  final List<Blog> posts;

  const _Successful({required this.posts, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 2.0,
      shrinkWrap: true,
      childAspectRatio: 1.3,
      physics: NeverScrollableScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: List.generate(
        posts.length,
        (index) {
          return UserBlogCard(
            () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SingleBlogView(posts[index])));
            },
            blog: posts[index],
          );
        },
      ),
    );
  }
}

import 'package:doctor_appointment/application/blog/blog_bloc.dart';
import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/injection.dart';
import 'package:doctor_appointment/presentation/doctor/blog/add_blog_post.dart';
import 'package:doctor_appointment/presentation/doctor/blog/doctor_view_blog.dart';
import 'package:doctor_appointment/presentation/doctor/blog/widgets/post_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DoctorBlogView extends StatefulWidget {
  const DoctorBlogView({Key? key}) : super(key: key);

  @override
  _DoctorBlogViewState createState() => _DoctorBlogViewState();
}

class _DoctorBlogViewState extends State<DoctorBlogView> {
   bool initial = true;
  final List<Blog> posts = [];
  RefreshController _refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {

    return BlocProvider(
        create: (context) =>
            getIt<BlogBloc>()..add(const BlogEvent.watchAllBlogStarted(null)),
        child: SafeArea(
          child: Scaffold(
            body: BlocListener<BlogBloc, BlogState>(
              listener: (context, state) {
                state.map(
                    initial: (_)=>{},
                    loadInProgress: (_)=>{},
                    loadSuccess: (data){

                    },
                    loadFailure: (fail)=>{}
                );
              },
              child: BlocBuilder<BlogBloc, BlogState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => _InitialPage(title: "Please wait..."),
                    loadInProgress: (_) =>
                        _InitialPage(title: "Data Loading..."),
                    loadSuccess: (data) {
                      posts.clear();
                      posts.addAll(data.items);
                      initial = false;
                      return _Successful(posts,_refreshController);
                    },
                    loadFailure: (value) => _FailToLoad(
                      title: 'No data found',
                    ),
                  );
                },
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AddBlogPost()),
                );
              },
              child: const Icon(Icons.add),
              backgroundColor: Colors.green,
            ),
          ),
        ),
      );
  }
}

class _Successful extends StatelessWidget {
  final title;
  final List<Blog> posts;
  final RefreshController _refreshController;

  const _Successful(this.posts,this._refreshController, {this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      controller: _refreshController,
      onRefresh: (){
        context.read<BlogBloc>()..add(const BlogEvent.watchAllBlogStarted(null));
      },
      onLoading: (){
        _refreshController.loadComplete();
      } ,
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, int index) {
          return BlogPostView(
            blog: posts[index],
            callBack: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>
                  DoctorViewBlog(posts[index])));
            },
          );
        },
      ),
    );
  }
}

class _InitialPage extends StatelessWidget {
  final title;
  const _InitialPage({this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}

class _FailToLoad extends StatelessWidget {
  final title;

  const _FailToLoad({this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
          ),
          Icon(Icons.error),
        ],
      ),
    );
  }
}

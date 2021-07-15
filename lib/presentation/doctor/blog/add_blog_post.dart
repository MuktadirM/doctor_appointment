import 'package:doctor_appointment/application/blog/add/add_blog_bloc.dart';
import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddBlogPost extends StatelessWidget {
  const AddBlogPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AddBlogBloc>()..add(const AddBlogEvent.initialization()),
      child: BlocBuilder<AddBlogBloc, AddBlogState>(
        builder: (context, state) {
          return state.map(
              initial: (_)=> AddBlocPostForm(),
              addInProgress: (_) => InitialPage(title: 'In progress',),
              addSuccess: (_) => Successful(title: 'Add Success'),
              failToAdd: (value) => FailToAdd(title: 'Fail To Add'),
          );
        },
      ),
    );
  }
}

class AddBlocPostForm extends StatelessWidget{
  String title = "";
  String body = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Blog Post'),
      ),
      body: SafeArea(
        child: Stack(children: <Widget>[
          Form(
            // autovalidateMode: true,
            child: ListView(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.edit),
                    labelText: 'Title',
                  ),
                  minLines: 1, //Normal textInputField will be displayed
                  maxLines: 2,
                  autocorrect: false,
                  onChanged: (txt) {
                    title = txt;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.message),
                    labelText: 'Description',
                  ),
                  minLines: 4, //Normal textInputField will be displayed
                  maxLines: 13,
                  autocorrect: false,
                  onChanged: (txt) {
                    body = txt;
                  },
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
              ),
              child: ElevatedButton(
                child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text('Add to Blog Post',
                      style: TextStyle(fontSize: 20)),
                ),
                onPressed: () {
                  Blog blog = Blog(title: title, description: body);
                  context.read<AddBlogBloc>()..add(AddBlogEvent.addBlog(blog));
                },
                style: ButtonStyle(
                    shape:
                    MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        ))),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class InitialPage extends StatelessWidget {
  final title;
  const InitialPage({this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Blog Post'),),
      body: SafeArea(
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),),
            CircularProgressIndicator(),
          ],
        )),
      ),
    );
  }
}

class Successful extends StatelessWidget {
  final title;
  const Successful({this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Blog Post'),),
      body: SafeArea(
        child: Center(child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,style:TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
            ),),
            Icon(Icons.done_all),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: ()=>{ Navigator.pop(context)},
                child: Text('Okay'))
          ],
        )),
      ),
    );
  }

}

class FailToAdd extends StatelessWidget {
  final title;
  const FailToAdd({this.title,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Blog Post'),),
      body: SafeArea(
        child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,style:TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500
            ),),
            Icon(Icons.error),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: ()=>{ Navigator.pop(context)},
                child: Text('Okay'))
          ],
        )),
      ),
    );
  }
}


import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'blog_event.dart';
part 'blog_state.dart';

class BlogBloc extends Bloc<BlogEvent, BlogState> {
  BlogBloc() : super(BlogInitial());

  @override
  Stream<BlogState> mapEventToState(
    BlogEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

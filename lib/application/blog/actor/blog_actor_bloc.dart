import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'blog_actor_event.dart';
part 'blog_actor_state.dart';

@injectable
class BlogActorBloc extends Bloc<BlogActorEvent, BlogActorState> {
  BlogActorBloc() : super(BlogActorInitial());

  @override
  Stream<BlogActorState> mapEventToState(
    BlogActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}

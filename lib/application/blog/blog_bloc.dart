import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/domain/services/i_blog_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'blog_event.dart';
part 'blog_state.dart';
part 'blog_bloc.freezed.dart';

@injectable
class BlogBloc extends Bloc<BlogEvent, BlogState> {
  final IBlogServices _services;

  BlogBloc(this._services) : super(const _Initial());

  late StreamSubscription<Either<ValueFailure, List<Blog>>>
  _blogStreamSubscription;

  @override
  Stream<BlogState> mapEventToState(
    BlogEvent event,
  ) async* {
    yield* event.map(
        watchAllBlogStarted: (e) async* {
          yield const _LoadInProgress();
          _blogStreamSubscription = _services.watchAll(e.filter).listen(
                  (failOrSuccess) => add(BlogEvent.blogItemReceived(failOrSuccess)));
        },

        blogItemReceived: (e) async* {
            final data = e.failureOrItems;
            yield data.fold((l) => _LoadFailure(l), (r) => _LoadSuccess(r));
        }
    );
  }

  @override
  Future<void> close() async {
    await _blogStreamSubscription.cancel();
    return super.close();
  }
}

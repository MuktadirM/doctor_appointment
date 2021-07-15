import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:doctor_appointment/domain/models/core/blog.dart';
import 'package:doctor_appointment/domain/services/i_blog_services.dart';
import 'package:doctor_appointment/domain/utils/value_failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'add_blog_event.dart';
part 'add_blog_state.dart';
part 'add_blog_bloc.freezed.dart';

@injectable
class AddBlogBloc extends Bloc<AddBlogEvent, AddBlogState> {
  final IBlogServices _services;

  AddBlogBloc(this._services) : super(const _Initial());

  @override
  Stream<AddBlogState> mapEventToState(
    AddBlogEvent event,
  ) async* {
    yield* event.map(
        initialization: (e) async* {
          yield const _Initial();
        },
        addBlog: (e) async* {
        yield const _AddInProgress();
        final data = await _services.add(e.blog);
        yield data.fold(
                (l) => _FailToAdd(l),
                (_) => _AddSuccess());
    });
  }
}

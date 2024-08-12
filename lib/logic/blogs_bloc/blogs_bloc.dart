import 'package:bloc/bloc.dart';
import 'package:flutter_blog_explorer/data/models/blog_model.dart';
import 'package:flutter_blog_explorer/data/repositories/blog_respository.dart';
import 'package:meta/meta.dart';

part 'blogs_event.dart';
part 'blogs_state.dart';

class BlogsBloc extends Bloc<BlogsEvent, BlogsState> {
  BlogsBloc() : super(const BlogsInitial([])) {
    on<LoadBlogs>((event, emit) async {
      emit(const BlogsLoadingState([]));

      final result = await BlogsRepository.getBlogs();

      if (result.isSuccess) {
        emit(BlogsReadyState(result.data!));
      } else {
        emit(BlogsErrorState(result.error!.message));
        print('Request failed with status code: ${result.error!.code}');
        print('result data: ${result.error!.message}');
      }
    });
  }
}

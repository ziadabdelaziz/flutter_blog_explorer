// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'blogs_bloc.dart';

@immutable
abstract class BlogsState {
  final List<BlogModel> blogs;

  const BlogsState(
    this.blogs,
  );
}

class BlogsInitial extends BlogsState {
  const BlogsInitial(super.blogs);
}

class BlogsLoadingState extends BlogsState {
  const BlogsLoadingState(super.blogs);
}

class BlogsReadyState extends BlogsState {
  const BlogsReadyState(super.blogs);
}

class BlogsErrorState extends BlogsState {
  final String error;

  const BlogsErrorState(this.error) : super(const []);
}

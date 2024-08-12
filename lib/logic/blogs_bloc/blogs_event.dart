part of 'blogs_bloc.dart';

@immutable
abstract class BlogsEvent {}

class LoadBlogs extends BlogsEvent {}

class ToggleFavoriteBlog extends BlogsEvent {
  final String id;

  ToggleFavoriteBlog(this.id);
}

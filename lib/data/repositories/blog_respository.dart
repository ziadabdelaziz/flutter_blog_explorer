import 'dart:convert';

import 'package:flutter_blog_explorer/data/dataproviders/blogs_api.dart';
import 'package:flutter_blog_explorer/data/models/blog_model.dart';

class BlogsRepository {
  static Future<Result<List<BlogModel>>> getBlogs() async {
    try {
      final response = await BlogsAPI.fetchBlogs();

      if (response.statusCode == 200) {
        final json = await jsonDecode(response.body);
        print(json['blogs']);
        final blogs = (json['blogs'] as List)
            .map((item) => BlogModel.fromJson(item))
            .toList();
        
        

        return Result.success(blogs);
      } else {
        return Result.failure(NetworkError(response.statusCode, response.body));
      }
    } catch (e) {
      return Result.failure(NetworkError(0, e.toString()));
    }
  }
}

class Result<T> {
  final T? data;
  final NetworkError? error;

  Result.success(this.data) : error = null;
  Result.failure(this.error) : data = null;

  bool get isSuccess => error == null;
}

class NetworkError {
  final int code;
  final String message;

  NetworkError(this.code, this.message);
}

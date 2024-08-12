import 'package:hive_flutter/hive_flutter.dart';

part 'blog_model.g.dart';

@HiveType(typeId: 0)
class BlogModel {
  @HiveField(0)
  final String id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String imageUrl;

  BlogModel({
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  factory BlogModel.fromJson(json) {
    return BlogModel(
      id: json['id'],
      title: json['title'],
      imageUrl: json['image_url'],
    );
  }
}

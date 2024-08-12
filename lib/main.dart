import 'package:flutter/material.dart';
import 'package:flutter_blog_explorer/app.dart';
import 'package:flutter_blog_explorer/data/models/blog_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BlogModelAdapter());
  runApp(const MyApp());
}

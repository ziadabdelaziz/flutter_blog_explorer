import 'package:flutter/material.dart';
import 'package:flutter_blog_explorer/data/models/blog_model.dart';
import 'package:flutter_blog_explorer/presentation/pages/details_page.dart';
import 'package:go_router/go_router.dart';
import 'package:transparent_image/transparent_image.dart';

class BlogPreview extends StatelessWidget {
  final BlogModel blog;

  const BlogPreview({
    super.key,
    required this.blog,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailsPage(blog: blog),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.only(bottom: 16),
        margin: const EdgeInsets.only(bottom: 21),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Color.fromARGB(185, 24, 24, 24),
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(6)),
              child: FadeInImage.memoryNetwork(
                placeholder: kTransparentImage,
                image: blog.imageUrl,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                blog.title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_blog_explorer/data/models/blog_model.dart';

class DetailsPage extends StatelessWidget {
  final BlogModel blog;
  const DetailsPage({
    super.key,
    required this.blog,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SubSpace',
          style: TextStyle(color: Color.fromARGB(255, 225, 225, 225)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey[400],
          ),
        ),
        backgroundColor: const Color.fromARGB(230, 29, 29, 33),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(230, 29, 29, 33),
        child: Icon(
          Icons.favorite_border_outlined,
          color: Colors.grey[400],
        ),
      ),
      backgroundColor: const Color.fromARGB(217, 69, 68, 68),
      body: Column(
        children: [
          Image.network(
            blog.imageUrl,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              blog.title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          )
        ],
      ),
    );
  }
}

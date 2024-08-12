import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_explorer/logic/blogs_bloc/blogs_bloc.dart';
import 'package:flutter_blog_explorer/presentation/widgets/blog_preview.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<BlogsBloc>(context).add(LoadBlogs());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SubSpace',
          style: TextStyle(color: Color.fromARGB(255, 225, 225, 225)),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.grey[600],
            ),
          )
        ],
        backgroundColor: const Color.fromARGB(230, 29, 29, 33),
      ),
      backgroundColor: const Color.fromARGB(217, 69, 68, 68),
      body: BlocConsumer<BlogsBloc, BlogsState>(
        listener: (context, state) {},
        builder: (context, state) {
          print('rebuilt');
          if (state is BlogsLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is BlogsErrorState) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: ListView.builder(
                itemCount: state.blogs.length,
                itemBuilder: (context, index) {
                  return BlogPreview(blog: state.blogs[index]);
                },
              ),
            );
          }
        },
      ),
    );
  }
}

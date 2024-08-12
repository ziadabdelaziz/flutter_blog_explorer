import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_blog_explorer/logic/blogs_bloc/blogs_bloc.dart';

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
        title: const Text('SubSpace'),
        backgroundColor: Theme.of(context).primaryColorLight,
      ),
      body: BlocConsumer<BlogsBloc, BlogsState>(
        listener: (context, state) {},
        builder: (context, state) {
          if (state is BlogsLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is BlogsErrorState) {
            return Center(
              child: Text(state.error),
            );
          } else {
            return Center(
              child: ListView.builder(
                itemCount: state.blogs.length,
                itemBuilder: (context, index) {
                  return ListTile(title: Text(state.blogs[index].title));
                },
              ),
            );
          }
        },
      ),
    );
  }
}

import 'package:flutter_blog_explorer/presentation/pages/home_page.dart';
import 'package:go_router/go_router.dart';

final router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const MyHomePage(),
    ),
    // GoRoute(
    //   name: 'shope',
    //   path: '/shope',
    //   builder: (context, state) => ShopeScreen(),
    // ),
  ],
);
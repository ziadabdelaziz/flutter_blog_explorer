import 'dart:async';

import 'package:http/http.dart' as http;

class BlogsAPI {
  static String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
  static String adminSecret =
      '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

  static Future<http.Response> fetchBlogs() async {
    final response = await http.get(Uri.parse(url), headers: {
      'x-hasura-admin-secret': adminSecret,
    });

    return response;
  }
}

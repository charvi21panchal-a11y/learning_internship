import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:learning_internship/models/post_model.dart';

class ApiService {

  static Future<List<Post>> fetchPosts() async {

    final url =
    Uri.parse('https://jsonplaceholder.typicode.com/posts');

    final response = await http.get(url);

    if (response.statusCode == 200) {

      List jsonData = jsonDecode(response.body);

      return jsonData
          .map((e) => Post.fromJson(e))
          .toList();

    } else {
      throw Exception("Failed to load posts");
    }
  }

}
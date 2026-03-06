import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:learning_internship/models/post_model.dart';

class ApiService {
  static Future<List<Post>> fetchPosts() async {
    final url = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    try {
      final response = await http.get(url, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'User-Agent': 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36',
      });

      if (response.statusCode == 200) {
      if (response.statusCode == 200) {
        final List<dynamic> jsonData = jsonDecode(response.body);
        return jsonData.map((e) => Post.fromJson(e)).toList();
      } else if (response.statusCode == 403) {
        throw Exception("Access Forbidden (403). Check your network or API permissions.");
      } else {
        throw Exception("Server Error (${response.statusCode}): ${response.reasonPhrase}");
      }
    } on SocketException {
      throw Exception("No Internet connection. Please check your network.");
    } on HttpException {
      throw Exception("Couldn't find the data. Server issue.");
    } on FormatException {
      throw Exception("Bad data format. API might have changed.");
    } catch (e) {
      throw Exception("An unexpected error occurred: $e");
    }
  }
}

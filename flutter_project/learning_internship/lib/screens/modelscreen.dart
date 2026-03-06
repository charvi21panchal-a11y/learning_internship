import 'package:flutter/material.dart';
import '../models/post_model.dart';
import '../services/api_services.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {

  List<Post> posts = [];
  bool isLoading = true;
  String errorMessage = '';

  @override
  void initState() {
    super.initState();
    loadPosts();
  }

  Future<void> loadPosts() async {

    try {

      final data = await ApiService.fetchPosts();

      setState(() {
        posts = data;
        isLoading = false;
      });

    } catch (e) {

      setState(() {
        errorMessage = e.toString();
        isLoading = false;
      });

    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts API"),
      ),

      body: isLoading
          ? const Center(child: CircularProgressIndicator())

          : errorMessage.isNotEmpty
          ? Center(child: Text(errorMessage))

          : ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {

          final post = posts[index];

          return Card(
            margin: const EdgeInsets.all(8),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(post.id.toString()),
              ),
              title: Text(post.title),
              subtitle: Text(
                post.body,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          );
        },
      ),
    );
  }
}
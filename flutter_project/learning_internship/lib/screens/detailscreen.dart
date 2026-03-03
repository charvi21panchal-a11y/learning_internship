import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class  DetailScreen extends StatefulWidget{
  final String title;
  final String description;
  final String image;

  const DetailScreen({super.key,
    required this.title,
    required this.description,
    required this.image,
  });
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}
class _DetailScreenState extends State<DetailScreen> {
  String savedValue = "";


  Future<void> saveFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString("favorite", widget.title);
    setState(() {
      savedValue = widget.title;
    }
    );
  }

  Future<void> loadFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    final favorite = prefs.getString("favorite");
    setState(() {
      savedValue = favorite ?? "Nothing saved";
    }
    );
  }

  @override
  void initState() {
    super.initState();
    loadFavorite();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Details Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.network(widget.image, height: 200),
            const SizedBox(height: 16),
            Text(widget.title, style: const TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text(widget.description),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: saveFavorite,
              child: const Text("Save Favorite"),
            ),
            const SizedBox(height: 10),
            Text("Saved Favorite: $savedValue"),
          ],
        ),
      ),
    );
  }
}

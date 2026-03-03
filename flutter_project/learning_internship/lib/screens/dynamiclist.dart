import 'package:flutter/material.dart';
import 'package:learning_internship/widgets/custom_card.dart';
import 'detailscreen.dart';

class Dynamiclist extends StatelessWidget {
  const Dynamiclist({super.key});

  final List<Map<String, String>>items = const[
    {
      "title": "flutter",
      "description": " Google UI Toolkit",
      "image": "https://picsum.photos/200/300?1"
    },
    {
      "title": "Dart",
      "description": "programming Language",
      "image": "https://picsum.photos/200/300?2"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic List"),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CustomCard(
            title: items[index]["title"]!,
            description: items[index]["description"]!,
            image: items[index]["image"]!,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(
                        title: items[index]["title"]!,
                        description: items[index]["description"]!,
                        image: items[index]["image"]!,
                      ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
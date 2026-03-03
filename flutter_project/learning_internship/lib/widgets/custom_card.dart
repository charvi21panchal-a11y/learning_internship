import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final String image;
  final String description;
  final VoidCallback onTap;



  const CustomCard({super.key,
    required this.title,
    required this.image,
    required this.description,
    required this.onTap,
  }
  );

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            Image.network(
              image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 5),
                Text(description, style: const TextStyle(fontSize: 14)),
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}
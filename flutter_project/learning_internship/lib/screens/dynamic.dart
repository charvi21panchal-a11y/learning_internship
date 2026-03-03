import 'package:flutter/material.dart';
import 'package:learning_internship/screens/detailscreen.dart';

class Dynamic extends StatelessWidget {
  const Dynamic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic Screen"),
      ),
      body: Center(
        child: ElevatedButton(
            child: const Text("GO TO DETAIL SCREEN "),
            onPressed: (){
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Detailscreen(
      title: "Mountain",
      description: "Beautiful mountain landscape with snow.",
      image:"https://picsum.photos/250?image=9",
      ),
      ),
      );
      },
      ),
    ),
    );
  }
}
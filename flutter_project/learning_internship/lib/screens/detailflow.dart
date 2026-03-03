import 'package:flutter/material.dart';

class DetailFlow extends StatelessWidget {
  const DetailFlow({super.key});

  @override
  Widget build(BuildContext context) {
    final data=ModalRoute.of(context)!.settings.arguments as Map<String,String>;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Detail"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   Text(
                       data["title"]!,style:const TextStyle(fontSize: 22)
                   ),
                  const SizedBox(height: 20),
                  Text(
                      data["description"]!),
                ],
            ),
        ),
    );
  }
}

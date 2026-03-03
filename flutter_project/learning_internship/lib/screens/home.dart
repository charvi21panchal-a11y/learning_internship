import 'package:flutter/material.dart';

class HomePage  extends StatelessWidget {
  const HomePage({super.key});

  final List<Map<String,String>>items=const [
    {"title":"product 1","description":"This is product 1"},
    {"title":"product 2","description":"This is product 2"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context,index){
            return ListTile(
              title: Text(items[index]["title"]!),
              onTap: (){
                Navigator.pushNamed(context,'/detail',
                    arguments: items[index],
                );
              },
            );
          },
        ),
    );
  }
}

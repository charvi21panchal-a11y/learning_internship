import 'package:flutter/material.dart';

class Obscuretext extends StatelessWidget {
  const Obscuretext({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Text filed Example"),
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.lightBlueAccent),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(padding: EdgeInsets.all(10)
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                ),
              ),
              const SizedBox(height: 10),
              const Padding(padding: EdgeInsets.all(10)
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                ),
              ),
              const SizedBox(height: 10),
              const Padding(padding: EdgeInsets.all(10)
              ),
              TextFormField(
                maxLength: 08,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("submit"),
              ),
              SizedBox(height: 10),
              Padding(padding: EdgeInsetsGeometry.all(10)),
            ]
        )
    );
  }
}

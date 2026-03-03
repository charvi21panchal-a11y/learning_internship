import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Homescreens extends StatefulWidget {
  const Homescreens({super.key});

@override
  State<Homescreens> createState() => _HomescreensState();
}
class _HomescreensState extends State<Homescreens> {
  TextEditingController controller = TextEditingController();
  String savedValue = "";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  Future<void> saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("userData", controller.text);

    setState(() {
      savedValue = controller.text;
    });
  }
  Future<void> loadData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? data = prefs.getString("userData");

    setState(() {
      savedValue = data ?? "";
    });
  }

  Future<void> clearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove("userData");

    setState(() {
      savedValue = "";
      controller.clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SharedPreferences Example"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Enter Name or Email",
              style: TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 10),

            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Type here...",
              ),
            ),

            const SizedBox(height: 20),

            Row(
              children: [
                ElevatedButton(
                  onPressed: saveData,
                  child: const Text("Save"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: clearData,
                  child: const Text("Clear"),
                ),
              ],
            ),

            const SizedBox(height: 30),

            const Text(
              "Saved Value:",
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            Text(
              savedValue.isEmpty ? "No Data Saved" : savedValue,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.pinkAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


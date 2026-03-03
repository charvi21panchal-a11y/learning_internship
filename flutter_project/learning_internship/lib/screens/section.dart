import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {


  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    final screenWidth = size.width;
    return Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          title: const Text('Ui example'),
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.lightBlueAccent),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body:SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: screenWidth * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('profile',style: TextStyle(fontSize: 24,color: Colors.white,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.pink.shade400,
                      borderRadius: BorderRadius.circular(20),
                    ),
                 child: Column(
                     crossAxisAlignment : CrossAxisAlignment.start,
                    children: [
                      Text("charvi panchal", style:TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      Text("flutter developer",style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),

                      Text("settings",style:TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)),
                      SizedBox(height: 20),
                      Container(
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.pink.shade800,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            ListTile(
                              leading: Image.asset(
                                "assets/icons/download.png",
                                width: 24,
                                height: 24,
                              ),
                              title: Text("change password"),
                        ),
                            SizedBox(height: 20),
                            Divider(height: 1),
                            ListTile(
                              leading: Image.asset(
                                "assets/icons/notification.png",
                                width: 24,
                                height: 24,
                              ),
                              title: Text("Notification"),
                            ),
                            SizedBox(height: 20),
                            Divider(height: 1),
                            ListTile(
                              leading: Image.asset(
                                "assets/icons/log out.png",
                                width: 24,
                                height: 24,
                              ),
                              title: Text("logout"),
                            ),
                            SizedBox(height: 20),
                            Divider(height: 1),
                      ]
                  ),
                      )
                        ],
            ),
          ),
        ]
            ),
        )
    ),
    );
  }
}

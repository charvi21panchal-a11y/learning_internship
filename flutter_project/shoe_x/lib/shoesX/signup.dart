import 'package:flutter/material.dart';
import 'package:shoe_x/shoesX/secure.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => SignupState();
}

class SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [  const SizedBox(height: 40),
              const Text(
                "Join With Our Market",
                style: TextStyle(
                  fontFamily: "Teko",
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),

              const Text(
                "4,000,000 + shoes already to buy or sell",
                style: TextStyle(
                  fontFamily: "Satoshi",
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  color: Colors.grey),
              ),
              const SizedBox(height: 25),

              TextField(
                decoration: InputDecoration(
                  hintText: "First Name",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                decoration: InputDecoration(
                  hintText: "Last Name",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                decoration: InputDecoration(
                  hintText: "Email Address",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 15),

              TextField(
                obscureText: true,
                maxLength:6,
                decoration: InputDecoration(
                  hintText: "Password",
                  border: OutlineInputBorder(),
                ),
              ),

              const SizedBox(height: 25),

              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    minimumSize: const Size(double.infinity,55),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SecureaccountScreen()),
                    );
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 16),
                      ),
                      Icon(Icons.arrow_forward),
                    ],
                  )
                )
              ),
                const SizedBox(height:5),
                const Center(
                child: Text(
                  "OR",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              const SizedBox(height:10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: OutlinedButton(
                  onPressed: (){
                    Text("Google Sign In Clicked");
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.all(Radius.circular(0)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Sign Up With Google",
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(width: 5),
                      Image.asset("assets/icons/google.png",
                        height: 22,
                      ),
                    ],
                  )
                )
              ),
              const SizedBox(height:10),
                      SizedBox(
                        width: double.infinity,
                          height: 50,
                          child: OutlinedButton(
                              onPressed: (){
                                Text("Facebook Sign In Clicked");
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,
                                side: const BorderSide(color: Colors.black),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.all(Radius.circular(0)),
                                ),
                              ),
                               child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                const Text(
                                  "sign up with facebook",
                                  style: TextStyle(fontSize: 16),
                                ),
                              const SizedBox(width: 5),
                      Image.asset("assets/icons/facebook.png",
                        height: 22,
                      ),
                            ]
                          ),
                      ),
                ),
              const SizedBox(height:10),
                      SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: OutlinedButton(
                                    onPressed: (){
                                  Text("Apple Sign In Clicked");
                                },
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  side: const BorderSide(color: Colors.black),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.all(Radius.circular(0)),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                const Text(
                                  "sign up with apple",
                                  style: TextStyle(fontSize: 16),
                                ),
                                const SizedBox(width: 5),
                                Image.asset("assets/icons/apple.png",
                                  height: 22,
                                ),
                              ],
                ),
                  )
              ),
              const SizedBox(height: 15),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                  " I already account?",
                  style: TextStyle(fontSize:12,color: Colors.blueAccent),
                ),
                    Text(
                "Just Walking/around",
                style: TextStyle(fontSize:12,color: Colors.grey),
              ),
              ]
              ),

      ),
              ElevatedButton(
                child:const Text('go to secure account'),
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SecureaccountScreen ()),
                  );
                },
              )
        ],
      ),
      ),
      );
  }
}
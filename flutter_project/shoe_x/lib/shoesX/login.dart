import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                const Text(
                  "Welcome Back!",
                  style: TextStyle(
                    fontFamily: "Teko",
                    fontSize:41,
                  ),
                ),
                const SizedBox(height:5),
                const Text(
                  "Manager your Bids, Sells & More",
                  style: TextStyle(
                    fontFamily: "Satoshi",
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height:10),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Email Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password *",
                    suffixIcon: const Icon(Icons.visibility_off),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "Forgot password",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height:15),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    onPressed: () {},
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Log In",
                          style: TextStyle(fontSize: 18,color: Colors.white),

                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward,color: Colors.white,)
                      ],
                    ),
                  ),
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
                        onPressed: () {
                          Text("Google Sign In Clicked");
                        },
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusGeometry.all(Radius
                                .circular(0)),
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
                const SizedBox(height: 5),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      Text("Facebook Sign In Clicked");
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      side: const BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.all(Radius.circular(
                            0)),
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
                const SizedBox(height:5),
                SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: OutlinedButton(
                      onPressed: () {
                        Text("Apple Sign In Clicked");
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: const BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.all(Radius
                              .circular(0)),
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
                const SizedBox(height: 10),
                Center(
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text(
                  "Don’t have an account? ",
                  style: TextStyle(fontSize:12,color: Colors.blueAccent),
                ),
            Text(
              "Join with us",
              style: TextStyle(fontSize:12,color: Colors.grey),
                          ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

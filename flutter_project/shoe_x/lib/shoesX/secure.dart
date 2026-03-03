import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';


class SecureaccountScreen extends StatefulWidget {
  const SecureaccountScreen({super.key});

  @override
  State<SecureaccountScreen> createState() => _SecureaccountScreen();
}

class _SecureaccountScreen extends State<SecureaccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade200,
      body:SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),

            const Text(
              "Secure your  Account",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),

            const Text(
              "Enter your phone number below.An SMS Will be sent to that number with a code to enter on the next screen.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
                const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              height: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                border:Border.all(color: Colors.grey.shade300),
              ),
              child: Row(
                children: const[
                  Text("usa",style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 10),
              Expanded(
                child: Text(
                          "(+1) United States,USA",
                          style: TextStyle(fontSize: 16),
                        ),
                ),
                        Icon(Icons.keyboard_arrow_down),
                ],
                    ),
                ),
            const SizedBox(height:5),
           Container(
             height: 55,
             padding: const EdgeInsets.symmetric(horizontal: 15),
             decoration: BoxDecoration(
               color: Colors.white,
               border:Border.all(color: Colors.grey.shade300),
             ),
             child:const TextField(
               keyboardType: TextInputType.phone,
               decoration: InputDecoration(
                 border: InputBorder.none,
                 hintText: "000-000-0000",
                 hintStyle: TextStyle(color: Colors.grey,fontSize: 18),
               ),
             ),
             ),
      const SizedBox(height: 20),
      SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          ),
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Continue",
                style: TextStyle(fontSize: 16),
              ),
          Icon(Icons.arrow_forward),
            ],
        ),
          ),
      ),
            const SizedBox(height:10),
            SizedBox(
              width: double.infinity,
              height: 55,
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Colors.black),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(0)),
              ),
            ),
                onPressed: (){},
                child:const
                  Text("Maybe Later",style: TextStyle(fontSize: 16,color: Colors.black),
                ),

              ),
            ),
            ],
          ),
        ),
      ),
            );
  }
}
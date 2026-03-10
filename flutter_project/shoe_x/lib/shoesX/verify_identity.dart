import 'package:flutter/material.dart';

class VerifyIdentity extends StatefulWidget {
  const VerifyIdentity({super.key});

  @override
  State<VerifyIdentity> createState() => VerifyIdentityState();
}

class VerifyIdentityState extends State<VerifyIdentity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,

      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            const Text(
              "verify your identity",
              style: TextStyle(
                fontFamily: "Teko",
                fontSize: 50,
      ),
            ),
            const SizedBox(height: 5),
          const Text(" We've sent a text message to (+1) 406 555-0120",
            style: TextStyle(
              fontFamily: "Satoshi",
              fontSize: 16,
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
            const SizedBox(height:5),

            GestureDetector(
              onTap: () {},
              child: const Text(
                "Edit my phone",
                style: TextStyle(
                  fontFamily: "Satoshi",
                  fontSize: 16,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
              ),
            ),
            ),
            const SizedBox(height: 15),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: "Enter Code",
                  hintStyle: TextStyle(fontSize: 28,color: Colors.grey.shade400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(6),
                    borderSide: const BorderSide(color: Colors.black),
                  ),
                ),
              ),
            const SizedBox(height: 15),
            SizedBox(
                width: double.infinity,
                height: 55,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.all(Radius.circular(4)),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Continue",
                        style: TextStyle(fontSize: 18,color: Colors.white),
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.arrow_forward,color: Colors.white,),
                    ],
                  ),
                ),
            ),
                  const SizedBox(height: 15),
            Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
              Text("Didn't receive a code?",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black54,
              ),
              ),
              const SizedBox(width:5),
              Text(
                "Resend",
                style: TextStyle(
                  fontFamily: "Satoshi",
                  fontSize: 15,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,

                ),
              ),
        ],
    )
        ],
    ),
        ),
        );
  }
}
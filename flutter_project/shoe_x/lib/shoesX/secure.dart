import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';


import 'package:shoe_x/shoesX/verify_identity.dart';class SecureaccountScreen extends StatefulWidget {
  const SecureaccountScreen({super.key});

  @override
  State<SecureaccountScreen> createState() => _SecureaccountScreen();
}

class _SecureaccountScreen extends State<SecureaccountScreen> {

  String countryCode = "+1";
  String countryName = "United States,USA";
  final TextEditingController phoneController = TextEditingController();

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade200,
      body:Center(
        child: SafeArea(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
            const Text(
              "Secure your  Account",
              style: TextStyle(
                fontFamily: "Teko",
                fontSize:45,
              ),
            ),
            const SizedBox(height:5),

            const Text(
              "Enter your phone number below.An SMS Will be sent to that number with a code to enter on the next screen.",
              style: TextStyle(
                fontFamily: "Satoshi",
                fontSize: 16,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height:25),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                border:Border.all(color: Colors.grey.shade300),
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              CountryCodePicker(
                    onChanged: (country){
                      setState(() {
                        countryCode = country.dialCode!;
                        countryName = country.name!;
                      });
                    },
                    initialSelection: "US",
                    favorite:['+1','US'],
                    showCountryOnly: false,
                     showOnlyCountryWhenClosed: false,
                     showFlag: true,
                     showDropDownButton: true,
                      alignLeft: true,
                       flagWidth: 30,
                    dialogBackgroundColor: Colors.white,
                    dialogTextStyle: const TextStyle(color: Colors.black),
                    flagDecoration:
                    const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                  ),
                  ),
       ],
        ),
        ),
                 Container(
                   padding: const EdgeInsets.symmetric(horizontal: 5),
                   color: Colors.grey,
                 ),
                 const SizedBox(height:15),
                 TextField(
                  maxLength: 10,
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: const InputDecoration(
                    hintText: "000-000-0000",
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey,
                    ),
                  ),
                        ),
                      ),
            const SizedBox(height:10),
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const VerifyIdentity()),
            );
          },
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Continue",
                style: TextStyle(fontSize: 16,color: Colors.white,),
              ),
          Icon(Icons.arrow_forward,color: Colors.white,),
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
            const SizedBox(height:10),
          ],
            ),
      ),
        ),
      )
    );
  }
}
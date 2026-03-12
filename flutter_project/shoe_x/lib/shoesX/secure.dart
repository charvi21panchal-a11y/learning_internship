import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:shoe_x/shoesX/verify_identity.dart';

class SecureaccountScreen extends StatefulWidget {
  const SecureaccountScreen({super.key});

  @override
  State<SecureaccountScreen> createState() => _SecureaccountScreen();
}

class _SecureaccountScreen extends State<SecureaccountScreen> {

  String countryCode = "+1";
  String countryName = "United States,USA";
  String countryFlag = "🇺🇸";
  final TextEditingController phoneController = TextEditingController();

  void selectCountry()  {
    showCountryPicker(
      context: context,
      showPhoneCode: true,
      onSelect: (Country country){
        setState(() {
          countryCode = "+${country.phoneCode}";
          countryName = country.name;
          countryFlag = country.flagEmoji;
        });
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 60),
              const Text(
                "Secure Your Account",
                style: TextStyle(
                  fontFamily: "Teko",
                  fontSize:41,
                ),
              ),
              const SizedBox(height:5),
              const Text(
                "Enter your phone number below.An SMS Will be sent to that number with a code to enter on the next screen.",
                style: TextStyle(
                  fontFamily: "Satoshi",
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),
              const SizedBox(height:10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                color: Colors.grey,
              ),
              const SizedBox(height:5),
              GestureDetector(
                onTap: selectCountry,
                child:Container(
                  width: double.infinity,
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.white,
                  ),
                  child: Row(
                      children: [
                        Text(
                          countryFlag,
                          style: const TextStyle(
                              fontSize: 22
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "($countryCode )$countryName",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.keyboard_arrow_down),
                      ]
                  ),
                ),
              ),
              const SizedBox(height:10),
              TextField(
                maxLength: 10,
                controller: phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "000-000-0000",
                  hintStyle: TextStyle(color: Colors.grey,fontSize:28),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                  ),
                ),
              ),
              const SizedBox(height:10),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const VerifyIdentity()),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 55,
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  color: Colors.black,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                    Text(
                      "  Continue ",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward,color: Colors.white),
                  ]
                  ),
                ),
              ),
              const SizedBox(height:10),
              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const[
                   Text(
                   "  Maybe Later",
                    style: TextStyle(
                      fontFamily: "Satoshi",
                      fontSize: 17,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ]
                ),
              ),
            ]
        ),
      ),
    );
  }
}
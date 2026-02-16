import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});
  @override
  State <Validation> createState() => EmailValidation();
}

class EmailValidation extends State<Validation> {
  TextEditingController inputcontroller = TextEditingController();

  void validate(String email, dynamic emailValidator ) {
    bool isvalid = emailValidator.validate(email);
    if (isvalid) {
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("email validation"),
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.lightBlueAccent),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body:Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(padding: EdgeInsets.all(10)
                  ),
                  TextField(
                    controller: inputcontroller,
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    style: TextStyle(
                      fontSize: 18,
                    ),
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
                  MaterialButton(
                    onPressed: (() => EmailValidation(i.text)),
                    child: Text("Check"),
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
        )
    );
  }
}
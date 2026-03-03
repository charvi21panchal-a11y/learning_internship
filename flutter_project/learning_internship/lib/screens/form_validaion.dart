import 'package:flutter/material.dart';

class Validation extends StatefulWidget {
  const Validation({super.key});
  @override
  State <Validation> createState() => _EmailValidationState();
}

class _EmailValidationState extends State<Validation> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String _message = '';

  void _validateEmail() {
    final email = emailController.text;
    final bool isValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    setState(() {
      if (isValid) {
        _message = 'Email is valid';
      } else {
        _message = 'Please enter a valid email';
      }
    });
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Email Validation"),
          backgroundColor: Colors.lightBlueAccent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        body:Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your name',
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter your email',
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 10),
                    TextFormField(
                      controller: passwordController,
                      maxLength: 8,
                      obscureText: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 20),
                    MaterialButton(
                      color: Colors.lightBlueAccent,
                      onPressed: _validateEmail,
                      child: const Text("Check Email", style: TextStyle(color: Colors.white)),
                    ),
                    const SizedBox(height: 10),
                    Text(_message),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // You can add submit logic here
                        Navigator.pop(context);
                      },
                      child: const Text("Submit"),
                    ),
                  ]
              ),
            )
        )
    );
  }
}

import 'package:flutter/material.dart';

TextEditingController emailController = TextEditingController();

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: emailController,
        decoration: const InputDecoration(
          labelText: 'Enter your email',
          labelStyle: TextStyle(color: Colors.black),
          hintText: 'example@gmail.com',
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 3),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          filled: true,
          fillColor: Colors.white,
        ));
  }
}

import 'package:flutter/material.dart';

class SignupNavigatorButton extends StatelessWidget {
  const SignupNavigatorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const LinearBorder(),
          backgroundColor: Colors.blueAccent.shade100,
          elevation: 5,
        ),
        child: const Text(
          "Sign Up",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

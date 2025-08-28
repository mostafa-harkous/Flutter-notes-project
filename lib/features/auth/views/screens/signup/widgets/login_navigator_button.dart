import 'package:flutter/material.dart';

class LoginNavigatorButton extends StatelessWidget {
  const LoginNavigatorButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const LinearBorder(),
          backgroundColor: Colors.orangeAccent.shade100,
          elevation: 5,
        ),
        child: const Text(
          "Log in",
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

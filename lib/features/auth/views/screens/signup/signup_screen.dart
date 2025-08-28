import 'package:flutter/material.dart';
import 'package:notes_app/features/auth/views/screens/signup/widgets/login_navigator_button.dart';
import 'package:notes_app/features/auth/views/screens/signup/widgets/signup_button.dart';
import 'package:notes_app/features/auth/views/sharedwidgets/email_text_field.dart';
import 'package:notes_app/features/auth/views/sharedwidgets/password_text_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
              child: Column(
        children: [
          SizedBox(height: screenheight * 0.50),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: EmailTextField(),
          ),
          const SizedBox(
            height: 15,
          ),
           Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PasswordTextField(fillColor: Colors.orangeAccent.shade100,),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SignupButton(),
          ),
          SizedBox(
            height: screenheight * 0.09,
          ),
          const Text(
            "Already have an account ?",
            style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const LoginNavigatorButton()
        ],
      ))),
    );
  }
}

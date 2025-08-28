import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes_app/features/auth/views/sharedwidgets/email_text_field.dart';
import 'package:notes_app/features/auth/views/sharedwidgets/password_text_field.dart';
class LoginButton extends StatelessWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: ()  async {

          try {
   await FirebaseAuth.instance.signInWithEmailAndPassword(
    email: emailController.text,
    password: passwordController.text
  );
    } on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
 /*  AwesomeDialog(
            context:  context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Error',
            desc: 'No user found for that email.',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            ).show();*/
    
  } else if (e.code == 'wrong-password') {
   /*  AwesomeDialog(
            context: context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Error',
            desc: 'Wrong password provided for that user.',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            ).show();*/
  }
    }

        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 5,
          padding: const EdgeInsets.symmetric(vertical: 12),
        ),
        child: const Text(
          "Log In",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}

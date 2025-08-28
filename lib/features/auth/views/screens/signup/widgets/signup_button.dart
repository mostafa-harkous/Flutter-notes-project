import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:notes_app/features/auth/views/sharedwidgets/email_text_field.dart';
import 'package:notes_app/features/auth/views/sharedwidgets/password_text_field.dart';
class SignupButton extends StatelessWidget {
  const SignupButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed: ()  async {
          try {
        
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
  );
} on FirebaseAuthException catch (e) {
  if (e.code == 'weak-password') {
   /*  AwesomeDialog(
            context:  context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Error',
            desc: 'The password provided is too weak.',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            ).show();*/
  } else if (e.code == 'email-already-in-use') {
    /* AwesomeDialog(
            context:  context,
            dialogType: DialogType.info,
            animType: AnimType.rightSlide,
            title: 'Error',
            desc: 'The account already exists for that email.',
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
          "Sign Up",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.orange,
          ),
        ),
      ),
    );
  }
}

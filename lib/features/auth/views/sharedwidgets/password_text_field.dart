import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/auth/providers/sharedprovider/password_provider.dart';

TextEditingController passwordController = TextEditingController();

class PasswordTextField extends ConsumerWidget {
 final Color fillColor;
   const PasswordTextField({super.key, required this.fillColor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isObscured = ref.watch(passwordViewModelProvider);
    final passwordViewModel = ref.read(passwordViewModelProvider.notifier);
    return TextField(
        controller: passwordController,
        obscureText: isObscured,
        decoration: InputDecoration(
          labelText: 'Enter your password',
          labelStyle: const TextStyle(color: Colors.black),
          suffixIcon: IconButton(
            icon: Icon(isObscured ? Icons.visibility_off : Icons.visibility),
            onPressed: passwordViewModel.toggleVisibility,
          ),
          hintText: 'Password',
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 3),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          filled: true,
          fillColor: fillColor,
        ));
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';

//ViewModel for the PasswordTextField => auth\views\sharedwidgets\password_text_field.dart

class PasswordViewModel extends StateNotifier<bool> {
  PasswordViewModel() : super(true); // Initially, password is hidden

  void toggleVisibility() {
    state = !state;
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/auth/viewmodels/signup/password_viewmodel.dart';

// Riverpod provider for PasswordViewModel => auth\viemodels\signup\password_viewmodels.dart
final passwordViewModelProvider =
    StateNotifierProvider<PasswordViewModel, bool>(
  (ref) => PasswordViewModel(),
);

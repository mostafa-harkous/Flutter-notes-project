import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Viewmodel for NoteDescriptionTextField => notes\views\screens\notedetails\widgets\note_description_textfield.dart

class NoteDescriptionColorViewmodel extends StateNotifier<Color> {
  NoteDescriptionColorViewmodel() : super(Colors.grey.shade200);

  void changeColor(Color colorOption) {
    state = colorOption;
  }
}

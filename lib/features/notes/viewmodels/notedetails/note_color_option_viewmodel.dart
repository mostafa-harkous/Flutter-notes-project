import 'package:flutter_riverpod/flutter_riverpod.dart';

// Viewmodel for NoteColorOption => notes\views\screens\notedetails\widgets\note_color_option.dart

class NoteColorOptionViewModel extends StateNotifier<String?> {
  NoteColorOptionViewModel() : super(null);

  void toggleSelected(String? key) {
    state = key;
  }
}

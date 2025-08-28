import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/viewmodels/notedetails/note_color_option_viewmodel.dart';

// Riverpod provider for NoteColorOptionViewModel
final noteColorOptionViewModelProvider =
    StateNotifierProvider<NoteColorOptionViewModel, String?>(
  (ref) => NoteColorOptionViewModel(),
);

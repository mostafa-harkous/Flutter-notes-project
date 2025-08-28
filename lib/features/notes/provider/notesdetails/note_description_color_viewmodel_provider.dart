import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/viewmodels/notedetails/note_description_color_viewmodel.dart';

// Riverpod provider for NoteDescriptionColorViewmodel
final noteDescriptionColorViewModelProvider =
    StateNotifierProvider<NoteDescriptionColorViewmodel, Color?>(
  (ref) => NoteDescriptionColorViewmodel(),
);

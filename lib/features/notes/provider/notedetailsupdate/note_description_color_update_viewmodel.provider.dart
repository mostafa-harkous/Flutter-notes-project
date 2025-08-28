import 'dart:ui';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/viewmodels/notedetailsupdate/note_description_color_update_viewmodel.dart';
import 'package:notes_app/features/notes/views/screens/notesdetailsupdate/widgets/note_description_textfield_update.dart';

// Riverpod provider for NoteDescriptionColorUpdateViewmodel

final noteDescriptionColorUpdateViewModelProvider =
    StateNotifierProvider<NoteDescriptionColorUpdateViewmodel, Color?>(
  (ref) => NoteDescriptionColorUpdateViewmodel(colorOfNote!),
);





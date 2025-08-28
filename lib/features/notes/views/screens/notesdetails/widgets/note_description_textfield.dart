import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/provider/notesdetails/note_description_color_viewmodel_provider.dart';
import 'package:notes_app/features/notes/services/note_firebase_service.dart';

TextEditingController descriptionController = TextEditingController();

class NoteDescriptionTextField extends ConsumerWidget {
  final String? noteId;
  
   NoteDescriptionTextField({super.key, this.noteId});
   
   final NoteFirebaseService firebaseService = NoteFirebaseService();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var filledColor = ref.watch(noteDescriptionColorViewModelProvider);
      return TextField(
        maxLines: 25,
        minLines: 19,
        controller: descriptionController,
        decoration: InputDecoration(
            fillColor: filledColor,
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(25))),
      );
    } 
  
}

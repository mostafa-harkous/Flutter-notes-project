import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/models/sharedmodels/note_model.dart';
import 'package:notes_app/features/notes/provider/notesdetails/note_color_option_viewmodel_provider.dart';
import 'package:notes_app/features/notes/provider/notesdetails/note_description_color_viewmodel_provider.dart';
import 'package:notes_app/features/notes/services/note_firebase_service.dart';
import 'package:notes_app/features/notes/views/screens/notesdetails/widgets/note_color_option.dart';
import 'package:notes_app/features/notes/views/screens/notesdetails/widgets/note_description_textfield.dart';
import 'package:notes_app/features/notes/views/screens/notesdetails/widgets/note_title_textfield.dart';

class NoteSubmitButton extends ConsumerWidget {

  const NoteSubmitButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final NoteFirebaseService firebaseService = NoteFirebaseService();
    
      return ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
          ),
          onPressed: () async {
            NoteModel newNote = NoteModel(
              title: titleController.text.trim(),
              description: descriptionController.text.trim(),
              color: colorData!,
            );

            await firebaseService.addNote(newNote);
            titleController.clear();
            descriptionController.clear();
            ref
                .read(noteColorOptionViewModelProvider.notifier)
                .toggleSelected("");
            ref
                .read(noteDescriptionColorViewModelProvider.notifier)
                .changeColor(Colors.grey.shade100);
          },
          child: const Text(
            "Submit",
            style: TextStyle(
                fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
          ));
    
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/services/note_firebase_service.dart';
import 'package:notes_app/features/notes/views/screens/notesdetailsupdate/widgets/note_description_textfield_update.dart';
import 'package:notes_app/features/notes/views/screens/notesdetailsupdate/widgets/note_title_textfield_update.dart';

class NoteSubmitButtonUpdate extends ConsumerWidget {
  final String noteId;

  const NoteSubmitButtonUpdate({super.key, required this.noteId});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    NoteFirebaseService noteFirebaseService = NoteFirebaseService();

    return ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade100),
        ),
        onPressed: () async {
     noteFirebaseService.updateNoteData(
              noteId, titleControllerUpdate!, descriptionControllerUpdate!);
        },
        child: const Text(
          "Submit",
          style: TextStyle(
              fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
        ));
  }
}

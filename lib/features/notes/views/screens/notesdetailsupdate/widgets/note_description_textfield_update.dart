import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/provider/notedetailsupdate/note_description_color_update_viewmodel.provider.dart';
import 'package:notes_app/features/notes/services/note_firebase_service.dart';

TextEditingController? descriptionControllerUpdate;
String? colorOfNoteString;
Color? colorOfNote;

class NoteDescriptionTextFieldUpdate extends ConsumerWidget {
  final String? noteId;

  NoteDescriptionTextFieldUpdate({super.key, this.noteId});

  final NoteFirebaseService firebaseService = NoteFirebaseService();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder<Map<String, dynamic>?>(
        future: firebaseService.getNoteData(noteId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (!snapshot.hasData) {
            return const Center(child: Text("No data found"));
          }
          var data = snapshot.data!;
          String description = data['description'];
          colorOfNoteString = data['color'];

          descriptionControllerUpdate ??=
              TextEditingController(text: description);

          if (colorOfNoteString == "Orange") {
            colorOfNote = Colors.orange.shade100;
          } else {
            colorOfNote = Colors.blue.shade100;
          }
          var state = ref.watch(noteDescriptionColorUpdateViewModelProvider);

          return TextField(
            maxLines: 25,
            minLines: 19,
            controller: descriptionControllerUpdate,
            decoration: InputDecoration(
                fillColor: state,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25))),
          );
        });
  }
}

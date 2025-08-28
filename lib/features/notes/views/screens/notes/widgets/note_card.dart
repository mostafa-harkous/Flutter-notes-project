import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/models/sharedmodels/note_model.dart';
import 'package:notes_app/features/notes/services/note_firebase_service.dart';
import 'package:notes_app/features/notes/views/screens/notesdetailsupdate/notes_details_update_screen.dart';

class NoteCard extends StatelessWidget {
  final NoteModel note;

  const NoteCard({Key? key, required this.note}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color noteColor;
    NoteFirebaseService noteFirebaseService = NoteFirebaseService();

    // Handle color assignment based on `note.color`
    switch (note.color) {
      case 'Orange':
        noteColor = Colors.orange;
        break;
      case 'Blue':
        noteColor = Colors.blue.shade100;
        break;
      default:
        noteColor = Colors.grey;
    }

    return GestureDetector(
      onLongPress: () {
        AwesomeDialog(
          context: context,
          dialogType: DialogType.warning,
          animType: AnimType.scale,
          title: 'Delete Note',
          desc: 'Pressing Ok Will Delete The Note Forever',
          btnCancelOnPress: () {},
          btnOkOnPress: () {
            noteFirebaseService.deleteNote(note.id!);
            ScaffoldMessenger.of(context)
                .showSnackBar( const SnackBar(content: Text("Note Deleted" , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.green),)));
          },
        ).show();
      },
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotesDetailsUpdateScreen(noteId: note.id!),
          ),
        );
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: noteColor,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 8),
              Text(
                note.description,
                style: const TextStyle(fontSize: 14, color: Colors.white70),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

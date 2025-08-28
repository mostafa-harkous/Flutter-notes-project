import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/views/screens/notesdetailsupdate/widgets/note_description_textfield_update.dart';
import 'package:notes_app/features/notes/views/screens/notesdetailsupdate/widgets/note_submit_button_update.dart';
import 'package:notes_app/features/notes/views/screens/notesdetailsupdate/widgets/note_title_textfield_update.dart';

class NotesDetailsUpdateScreen extends StatelessWidget {
  final String noteId;
  const NotesDetailsUpdateScreen({super.key, required this.noteId});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Title",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: NoteTitleTextFieldUpdate(noteId: noteId,),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Description",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: NoteDescriptionTextFieldUpdate(
              noteId: noteId,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          Center(child: NoteSubmitButtonUpdate(noteId: noteId,))
                ],
              ),
            )
          
        ),
      );
    
  }
}

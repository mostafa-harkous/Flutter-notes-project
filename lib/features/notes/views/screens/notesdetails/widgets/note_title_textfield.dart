import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/services/note_firebase_service.dart';

TextEditingController titleController = TextEditingController();

class NoteTitleTextField extends StatelessWidget {
  final String? noteId;
   NoteTitleTextField({super.key, this.noteId});

   final NoteFirebaseService firebaseService = NoteFirebaseService();
  
  @override
  Widget build(BuildContext context) {
      return TextField(
          controller: titleController,
          decoration: const InputDecoration(
            labelText: 'Enter the title',
            labelStyle: TextStyle(color: Colors.black),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 3),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
            ),
            filled: true,
            fillColor: Colors.white,
          ));
    
    
  }
}

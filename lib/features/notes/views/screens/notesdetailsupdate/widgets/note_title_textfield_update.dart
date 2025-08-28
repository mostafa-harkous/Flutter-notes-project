import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/services/note_firebase_service.dart';

TextEditingController? titleControllerUpdate;

class NoteTitleTextFieldUpdate extends StatelessWidget {
  final String? noteId;
  
  NoteTitleTextFieldUpdate({super.key, this.noteId});

  final NoteFirebaseService firebaseService = NoteFirebaseService();
    
  @override
  Widget build(BuildContext context) {
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
            String title = data['title'];

     titleControllerUpdate ??= TextEditingController(text: title);

            return TextField(
                controller: titleControllerUpdate,
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
          });
  }
}

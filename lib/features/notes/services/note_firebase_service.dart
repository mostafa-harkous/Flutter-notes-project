import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/models/sharedmodels/note_model.dart';

class NoteFirebaseService {
 
  final FirebaseFirestore notefirebase = FirebaseFirestore.instance;
  final String notesCollection = "notes";
 
  var fetchData = FirebaseFirestore.instance.collection('notes').snapshots();

 // update note data
    Future<void> updateNoteData(String noteId , TextEditingController title , TextEditingController description) async {   
        await FirebaseFirestore.instance
            .collection('notes')
            .doc(noteId)
            .update({
          'title': title.text, // New title
          'description': description.text, // New description
        });
    }

  // Fetches note data from Firestore if noteId is not null; returns null if the document doesn't exist.
  Future<Map<String, dynamic>?> getNoteData(String? noteId) async {
    if (noteId == null) return null;
    DocumentSnapshot docSnapshot =
        await FirebaseFirestore.instance.collection("notes").doc(noteId).get();
    if (docSnapshot.exists) {
      return docSnapshot.data() as Map<String, dynamic>;
    }
    return null;
  }


  //add note
  Future<void> addNote(NoteModel note) async {
    await notefirebase.collection(notesCollection).add({
      'title': note.title,
      'description': note.description,
      'color': note.color,
    });
  }


  // Delete a Note
  Future<void> deleteNote(String id) async {
    await notefirebase.collection(notesCollection).doc(id).delete();
  }

  
}

import 'package:cloud_firestore/cloud_firestore.dart';

class NoteModel {
  String ?id;
  String title;
  String description;
  String color;

  NoteModel({
     this.id,
    required this.title,
    required this.description,
    required this.color,
  });

 
 factory NoteModel.fromFirestore(DocumentSnapshot doc) {
    return NoteModel(
      id: doc.id, // Get Firestore document ID
      title: doc['title'], // Direct field access
      description: doc['description'],
      color: doc['color'],
    );
  }
}

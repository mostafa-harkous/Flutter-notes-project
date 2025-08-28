import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/models/sharedmodels/note_model.dart';
import 'package:notes_app/features/notes/services/note_firebase_service.dart';
import 'package:notes_app/features/notes/views/screens/notes/widgets/note_card.dart';

class NotesList extends ConsumerWidget {
  const NotesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    NoteFirebaseService noteFirebaseService = NoteFirebaseService();
    return StreamBuilder(
      stream: noteFirebaseService.fetchData,
      builder: (context, AsyncSnapshot<QuerySnapshot> streamSnapshot) {
        if (streamSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (streamSnapshot.hasError) {
          return Center(
            child: Text("Error: ${streamSnapshot.error}"),
          );
        }

        if (streamSnapshot.hasData && streamSnapshot.data!.docs.isNotEmpty) {
          return GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: 1.2),
            itemCount: streamSnapshot.data!.docs.length,
            itemBuilder: (context, index) {
              DocumentSnapshot documentSnapshot =
                  streamSnapshot.data!.docs[index];
              final noteData = documentSnapshot.data() as Map<String, dynamic>;

              final note = NoteModel(
                id: documentSnapshot.id, // Get the document ID
                title: noteData['title'] ?? 'No title',
                description: noteData['description'] ?? 'No description',
                color: noteData['color'] ?? 'Grey',
              );

              return NoteCard(note: note);
            },
          );
        } else {
          return const Center(
            child: Text("No notes available"),
          );
        }
      },
    );
  }
}

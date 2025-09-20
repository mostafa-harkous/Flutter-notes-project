import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/views/screens/notesdetails/notes_details_screen.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NotesDetailsScreen()),
        );
      },
      backgroundColor: Colors.black,
      child: const Icon(
        Icons.add,
        color: Colors.orange,
        size: 40,
      ),
    );
  }
}

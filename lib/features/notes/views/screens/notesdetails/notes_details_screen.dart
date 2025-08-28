import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/views/screens/notesdetails/widgets/note_color_option.dart';
import 'package:notes_app/features/notes/views/screens/notesdetails/widgets/note_description_textfield.dart';
import 'package:notes_app/features/notes/views/screens/notesdetails/widgets/note_submit_button.dart';
import 'package:notes_app/features/notes/views/screens/notesdetails/widgets/note_title_textfield.dart';

class NotesDetailsScreen extends StatelessWidget {
  const NotesDetailsScreen({super.key });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
      backgroundColor: Colors.white,
      ),
      body:  SafeArea(
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
                  child: NoteTitleTextField(),
                ),
              const  SizedBox(
                  height: 20,
                ),
              const  Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Text(
                    "Description",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
              const  SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: NoteDescriptionTextField(),
                ),
              const  SizedBox(
                  height: 20,
                ),
              const  Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          NoteColorOption(
                            buttonKey: "Orange",
                          ),
                          NoteColorOption(
                            buttonKey: "Blue",
                          ),
                        ],
                      ),
                      NoteSubmitButton( )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

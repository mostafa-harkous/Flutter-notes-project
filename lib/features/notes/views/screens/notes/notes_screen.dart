import 'package:flutter/material.dart';
import 'package:notes_app/features/notes/views/screens/notes/widgets/floating_action_button_widget.dart';
import 'package:notes_app/features/notes/views/screens/notes/widgets/notes_list.dart';
import 'package:notes_app/features/notes/views/screens/notes/widgets/search_bar_widget.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.only(
                      top: 8.0, right: screenwidth * 0.20, left: 8.0),
                  child: const SearchBarWidget()),
              const SizedBox(
                height: 20,
              ),
              SizedBox( height: screenheight * 0.90 ,
                child:  const NotesList())
            ],
          ),
        )),
        floatingActionButton: const FloatingActionButtonWidget());
  }
}

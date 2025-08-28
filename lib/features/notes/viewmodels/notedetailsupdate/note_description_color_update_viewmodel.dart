import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// Viewmodel for NoteDescriptionUpdateTextField => notes\views\screens\notedetailsupdate\widgets\note_description_textfield_update.dart


class NoteDescriptionColorUpdateViewmodel extends StateNotifier<Color>  {
  NoteDescriptionColorUpdateViewmodel(Color a) : super(a);
  void changeColor(Color colorOption) {
    state = colorOption;
  }
}






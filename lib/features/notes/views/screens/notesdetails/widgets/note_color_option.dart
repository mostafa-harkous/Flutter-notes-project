import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/provider/notesdetails/note_color_option_viewmodel_provider.dart';
import 'package:notes_app/features/notes/provider/notesdetails/note_description_color_viewmodel_provider.dart';

String? colorData;

class NoteColorOption extends ConsumerWidget {
  const NoteColorOption({super.key, required this.buttonKey});
  final String? buttonKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Color? selectedColor;

    var selectedButton = ref.watch(noteColorOptionViewModelProvider);

    Color? circleColor;

    if (buttonKey == "Orange") {
      circleColor = Colors.orange;
    } else if (buttonKey == "Blue") {
      circleColor = Colors.blue;
    }
    if (selectedButton == "Orange") {
      selectedColor = Colors.orange.shade100;
    } else if (selectedButton == "Blue") {
      selectedColor = Colors.blue.shade100;
    }

    colorData = selectedButton;

    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: (selectedButton == buttonKey)
                ? selectedColor!
                : Colors.transparent,
            width: 5,
          ),
        ),
        child: IconButton(
          onPressed: () {
            ref
                .read(noteColorOptionViewModelProvider.notifier)
                .toggleSelected(buttonKey);
            selectedButton = ref.watch(noteColorOptionViewModelProvider);

            if (selectedButton == "Orange") {
              selectedColor = Colors.orange.shade100;
            } else if (selectedButton == "Blue") {
              selectedColor = Colors.blue.shade100;
            }
            ref
                .read(noteDescriptionColorViewModelProvider.notifier)
                .changeColor(selectedColor!);
          },
          icon: Icon(Icons.circle, color: circleColor),
        ));
  }
}

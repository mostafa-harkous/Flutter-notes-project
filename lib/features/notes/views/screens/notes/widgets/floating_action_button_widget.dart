import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatelessWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: Colors.black,
      child: const Icon(
        Icons.add,
        color: Colors.orange,
        size: 40,
      ),
    );
  }
}

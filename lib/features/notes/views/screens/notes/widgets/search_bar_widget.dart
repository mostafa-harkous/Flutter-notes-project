import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return SearchBar(
      controller: searchController,
      onSubmitted: (value) {
        
      },
      hintText: "Search...",
      padding: const MaterialStatePropertyAll(EdgeInsets.only(left: 13)),
      hintStyle: const MaterialStatePropertyAll(
          TextStyle(fontWeight: FontWeight.bold)),
      leading: const Icon(Icons.search),
      backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent.shade100),
      shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      trailing: [
        IconButton(
          icon: const Icon(Icons.clear, color: Colors.black),
          onPressed: () {},
        ),
      ],
      
    );
  }
}

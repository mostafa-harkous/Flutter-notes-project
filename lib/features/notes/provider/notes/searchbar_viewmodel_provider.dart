import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:notes_app/features/notes/viewmodels/notes/searchbar_viewmodel.dart';

// Riverpod provider for SearchBarViewModel
final searchBarViewModelProvider =
    StateNotifierProvider<SearchBarViewModel, String?>(
  (ref) => SearchBarViewModel(),
);

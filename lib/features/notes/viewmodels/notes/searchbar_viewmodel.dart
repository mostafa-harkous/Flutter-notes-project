import 'package:flutter_riverpod/flutter_riverpod.dart';

// Viewmodel for SearchBarWidget => notes\views\screens\notes\widgets\search_bar_widgets.dart

class SearchBarViewModel extends StateNotifier<String?> {
  SearchBarViewModel() : super(null);

  void toggleSelected(String? key) {
    state = key;
  }
}

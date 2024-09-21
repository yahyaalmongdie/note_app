import 'package:flutter/material.dart';
import 'package:note_app/features/home/presentation/view/widget/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 8),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}

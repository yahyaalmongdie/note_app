import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/notes/data/model/note_model.dart';
import 'package:note_app/features/notes/presentation/manager/view_notes_cubit/view_notes_cubit.dart';
import 'package:note_app/features/notes/presentation/view/widget/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewNotesCubit, ViewNotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<ViewNotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            itemCount: notes.length,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: NoteItem(
                  noteModel: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}

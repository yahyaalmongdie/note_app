import 'package:flutter/material.dart';
import 'package:note_app/features/notes/data/model/note_model.dart';
import 'package:note_app/features/notes/presentation/view/widget/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNoteViewBody(noteModel:noteModel),
    );
  }
}

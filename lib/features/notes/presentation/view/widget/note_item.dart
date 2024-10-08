import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/features/notes/data/model/note_model.dart';
import 'package:note_app/features/notes/presentation/manager/view_notes_cubit/view_notes_cubit.dart';
import 'package:note_app/features/notes/presentation/view/page/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => EditNoteView(
                      noteModel: noteModel,
                    )));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
            color: Color(noteModel.color),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                contentPadding: const EdgeInsets.all(0),
                title: Text(
                  noteModel.title,
                  style: const TextStyle(fontSize: 26, color: Colors.black),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    noteModel.content,
                    style: TextStyle(
                        fontSize: 18, color: Colors.black.withOpacity(.5)),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {
                      noteModel.delete();
                      BlocProvider.of<ViewNotesCubit>(context).fetchNotes();
                    },
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 24,
                    ))),
            Text(noteModel.date,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black.withOpacity(.5),
                ))
          ],
        ),
      ),
    );
  }
}

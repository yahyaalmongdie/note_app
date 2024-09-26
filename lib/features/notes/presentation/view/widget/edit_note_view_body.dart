import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/core/widget/custom_text_form_felid.dart';
import 'package:note_app/features/notes/data/model/note_model.dart';
import 'package:note_app/features/notes/presentation/manager/view_notes_cubit/view_notes_cubit.dart';
import 'package:note_app/features/notes/presentation/view/widget/custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title;
  String? content;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            CustomAppBar(
              onPressed: () {
                widget.noteModel.title = title ?? widget.noteModel.title;
                widget.noteModel.content = content ?? widget.noteModel.content;
                widget.noteModel.save();
                BlocProvider.of<ViewNotesCubit>(context).fetchNotes();
                Navigator.pop(context);
              },
              title: "Edit Note",
              icon: Icons.check,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextFormFiled(
              onChanged: (value) {
                title = value;
              },
              hintText: widget.noteModel.title,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomTextFormFiled(
              onChanged: (value) {
                content = value;
              },
              hintText: widget.noteModel.content,
              maxLines: 6,
            ),
          ],
        ),
      ),
    );
  }
}

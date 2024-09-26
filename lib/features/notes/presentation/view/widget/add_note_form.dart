import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app/core/widget/custom_text_form_felid.dart';
import 'package:note_app/core/widget/custom_button.dart';
import 'package:note_app/features/notes/data/model/note_model.dart';
import 'package:note_app/features/notes/presentation/manager/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/features/notes/presentation/manager/view_notes_cubit/view_notes_cubit.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextFormFiled(
            onSaved: (value) {
              title = value;
            },
            hintText: "Title",
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextFormFiled(
            onSaved: (value) {
              content = value;
            },
            hintText: "content",
            maxLines: 6,
          ),
          const SizedBox(
            height: 32,
          ),
          BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if (state is AddNoteFailure) {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text(state.errorMessage)));
              }
              if (state is AddNoteSuccess) {
                BlocProvider.of<ViewNotesCubit>(context).fetchNotes();
                Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                      var currentDate = DateTime.now();
                      var currentFormattedDate =
                          DateFormat("dd-MM-yyyy").format(currentDate);
                      var noteModel = NoteModel(
                          title: title!,
                          content: content!,
                          date: currentFormattedDate,
                          color: Colors.amber.value);
                      BlocProvider.of<AddNoteCubit>(context)
                          .addNote(noteModel: noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  btnText: "Add");
            },
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/core/widget/custom_text_form_felid.dart';
import 'package:note_app/features/notes/presentation/view/widget/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          CustomAppBar(
            title: "Edit Note",
            icon: Icons.check,
          ),
          SizedBox(
            height: 50,
          ),
          CustomTextFormFiled(
            hintText: "Title",
          ),
          SizedBox(
            height: 16,
          ),
          CustomTextFormFiled(
            hintText: "content",
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}

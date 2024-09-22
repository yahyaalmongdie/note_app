import 'package:flutter/material.dart';
import 'package:note_app/core/widget/custom_text_form_felid.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 32,
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

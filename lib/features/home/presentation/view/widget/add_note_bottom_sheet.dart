import 'package:flutter/material.dart';
import 'package:note_app/core/widget/custom_text_form_felid.dart';
import 'package:note_app/core/widget/cutom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const CustomTextFormFiled(
              hintText: "Title",
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormFiled(
              hintText: "content",
              maxLines: 6,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(onPressed: () {}, btnText: "Add"),
            const SizedBox(
              height: 16,
            )
          ],
        ),
      ),
    );
  }
}

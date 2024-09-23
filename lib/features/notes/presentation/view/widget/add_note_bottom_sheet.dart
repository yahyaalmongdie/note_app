import 'package:flutter/material.dart';
import 'package:note_app/core/widget/custom_text_form_felid.dart';
import 'package:note_app/core/widget/custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: AddNoteForm(),
      ),
    );
  }
}

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
          CustomButton(onPressed: () {}, btnText: "Add"),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/features/home/presentation/view/widget/custom_app_bar.dart';
import 'package:note_app/features/home/presentation/view/widget/notes_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(),
    
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/features/notes/presentation/manager/view_notes_cubit/view_notes_cubit.dart';
import 'package:note_app/features/notes/presentation/view/widget/custom_app_bar.dart';
import 'package:note_app/features/notes/presentation/view/widget/notes_list_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  void initState() {
    BlocProvider.of<ViewNotesCubit>(context).fetchNotes();
    super.initState();
  }

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
            title: "Notes",
            icon: Icons.search,
          ),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:note_app/features/notes/presentation/view/widget/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, required this.icon, this.onPressed});
  final String title;
  final IconData icon;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
        const Spacer(),
        CustomSearchIcon(onPressed: onPressed, icon: icon),
      ],
    );
  }
}

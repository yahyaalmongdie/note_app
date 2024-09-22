import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(.05),
          borderRadius: BorderRadius.circular(16)),
      child: Icon(icon),
    );
  }
}

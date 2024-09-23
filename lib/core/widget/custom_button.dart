import 'package:flutter/material.dart';
import 'package:note_app/core/utils/constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.onPressed, required this.btnText});
  final Function() onPressed;
  final String btnText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(
          color: kPrimaryColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          height: 55,
          child: Text(
            btnText,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          onPressed: () {}),
    );
  }
}

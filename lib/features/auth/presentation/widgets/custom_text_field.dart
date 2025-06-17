import 'package:auvnet_flutter_task/core/styles/colors/my_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, required this.icon});
  final String hintText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(

      style: const TextStyle(color: Colors.grey),
      decoration: InputDecoration(
        filled: true,
        fillColor: MyColors.textFieldBgColor,
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.textFieldBgColor),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.textFieldBgColor),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.textFieldBgColor)
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
    );

  }
}

import 'package:auvnet_flutter_task/core/styles/colors/my_colors.dart';
import 'package:auvnet_flutter_task/core/styles/fonts/my_fonts.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, required this.text});

  final void Function()? onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: MyColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 19),
          child: Center(
              child: Text(
            text,
            style: MyFonts.styleMedium_18.copyWith(color: MyColors.whiteColor),
          )),
        ),
      ),
    );
  }
}

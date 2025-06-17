import 'package:auvnet_flutter_task/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class CustomTextFieldSection extends StatelessWidget {
  const CustomTextFieldSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        CustomTextField(
          icon: Icons.email,
          hintText: 'mail',
        ),
        CustomTextField(
          icon: Icons.lock,
          hintText: 'password',
        ),
        CustomTextField(
          icon: Icons.lock,
          hintText: 'password',
        ),
      ],
    );
  }
}

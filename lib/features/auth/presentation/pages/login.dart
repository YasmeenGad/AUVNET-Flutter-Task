import 'package:auvnet_flutter_task/core/routes/app_router.dart';
import 'package:auvnet_flutter_task/core/styles/colors/my_colors.dart';
import 'package:auvnet_flutter_task/core/styles/fonts/my_fonts.dart';
import 'package:auvnet_flutter_task/core/utils/base/custom_button.dart';
import 'package:auvnet_flutter_task/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:auvnet_flutter_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                SvgPicture.asset(Assets.imagesImage),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    spacing: 16,
                    children: [
                      CustomTextField(
                        icon: Icons.email,
                        hintText: 'Email',
                      ),
                      CustomTextField(
                        icon: Icons.lock,
                        hintText: 'Password',
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomButton(text: 'Login', onTap: () {
                    context.go(AppRouter.)
                  }),
                ),
                const SizedBox(height: 16),
                Text("Create an account", style: MyFonts.styleBold_14.copyWith(color: MyColors.blueColor)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

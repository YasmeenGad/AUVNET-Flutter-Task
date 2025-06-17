import 'package:auvnet_flutter_task/core/routes/app_router.dart';
import 'package:auvnet_flutter_task/core/styles/colors/my_colors.dart';
import 'package:auvnet_flutter_task/core/styles/fonts/my_fonts.dart';
import 'package:auvnet_flutter_task/core/utils/base/custom_button.dart';
import 'package:auvnet_flutter_task/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:auvnet_flutter_task/features/auth/presentation/widgets/custom_text_field_section.dart';
import 'package:auvnet_flutter_task/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Register extends StatelessWidget {
  const Register({super.key});

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
                  child: const CustomTextFieldSection(),
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: CustomButton(
                      text: 'Sign Up',
                      onTap: () {
                        context.go(AppRouter.home);
                      }),
                ),
                const SizedBox(height: 16),
                Text("Create an account",
                    style: MyFonts.styleBold_14
                        .copyWith(color: MyColors.blueColor)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

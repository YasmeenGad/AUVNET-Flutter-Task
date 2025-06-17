import 'package:auvnet_flutter_task/core/routes/app_router.dart';
import 'package:auvnet_flutter_task/core/styles/colors/my_colors.dart';
import 'package:auvnet_flutter_task/core/styles/fonts/my_fonts.dart';
import 'package:auvnet_flutter_task/core/utils/base/custom_button.dart';
import 'package:auvnet_flutter_task/features/onboarding/presentation/models/onboarding_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  late PageController pageController;
  int currentIndex = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.whiteColor,
      body: PageView.builder(
          controller: pageController,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          itemBuilder: (context, index) => CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        SvgPicture.asset(contents[index].image),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 43),
                          child: Column(
                            spacing: 11,
                            children: [
                              Text(
                                contents[index].title,
                                style: MyFonts.styleMedium_28
                                    .copyWith(color: MyColors.blackColor),
                              ),
                              Text(
                                contents[index].description,
                                style: MyFonts.styleRegular_14
                                    .copyWith(color: MyColors.grayColor),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                height: 50,
                              ),
                              CustomButton(
                                text: "Get Started",
                                onTap: () {
                                  context.goNamed(AppRouter.login);
                                },
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              GestureDetector(
                                onTap: () {
                                  if (currentIndex == contents.length - 1) {
                                    context.goNamed(AppRouter.login);
                                  }
                                  pageController.nextPage(
                                      duration: Duration(microseconds: 500),
                                      curve: Curves.bounceOut);
                                },
                                child: Text(
                                  "Next",
                                  style: MyFonts.styleRegular_14
                                      .copyWith(color: MyColors.grayColor),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
          itemCount: contents.length),
    );
  }
}

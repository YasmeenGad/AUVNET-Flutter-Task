import 'package:auvnet_flutter_task/generated/assets.dart';

class OnBoardingContent {
  final String image;
  final String title;
  final String description;

  OnBoardingContent({required this.image, required this.title, required this.description});

}

List<OnBoardingContent> contents = [
  OnBoardingContent(
      title: 'all-in-one delivery ',
      image: Assets.imagesImage,
      description: "Order groceries, medicines, and meals delivered straight to your door"
  ),
  OnBoardingContent(
      title: 'User-to-User Delivery',
      image: Assets.imagesImage,
      description: "Send or receive items from other users quickly and easily"
  ),
  OnBoardingContent(
      title: 'Sales & Discounts',
      image: Assets.imagesImage,
      description: "Discover exclusive sales and deals every day"
  ),
];
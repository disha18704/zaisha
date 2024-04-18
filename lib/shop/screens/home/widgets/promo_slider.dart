

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t_store1/common/images/t_rounded.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:t_store1/features/authentication/controllers.onboarding/home_controller.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';

class TPromoSlider extends StatelessWidget {
  const TPromoSlider({Key? key, required this.banners}) : super(key: key);

  final List<String> banners;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index),
          ),
          items: banners.map((url) => Troundedimage(imageUrl: url)).toList(), // Fix here
        ),
        SizedBox(
          height: TSizes.spaceBtwItems,
        ),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (int i = 0; i < banners.length; i++)
                  TCircularContainer(
                    width: 20,
                    height: 4,
                    margin: EdgeInsets.all(10),
                    backgroundColor: controller.carousalCurrentIndex.value == i
                        ? TColors.primary
                        : TColors.grey,
                  ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

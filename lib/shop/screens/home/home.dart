import 'package:flutter/material.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store1/common/widgets/texts/SectionHeading.dart';
import 'package:t_store1/shop/screens/home/widgets/home_appBar.dart';
import 'package:t_store1/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store1/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store1/utils/constants/image_strings.dart';
import 'package:t_store1/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  THomeAppBar(),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  TSearchContainer(
                    text: 'Search in Store',
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        TSearchHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(
                          height: TSizes.spaceBtwSections,
                        ),
                        THomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TPromoSlider(
                    banners: [TImages.banner3, TImages.banner2, TImages.banner1],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:t_store1/common/product_cards/product_card_vertical.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:t_store1/common/widgets/texts/SectionHeading.dart';
import 'package:t_store1/shop/screens/home/widgets/home_appBar.dart';
import 'package:t_store1/shop/screens/home/widgets/home_categories.dart';
import 'package:t_store1/shop/screens/home/widgets/promo_slider.dart';
import 'package:t_store1/utils/constants/image_strings.dart';
import 'package:t_store1/utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key, required this.itemCount,
    this.mainAxisExtent = 288, required this.itemBuilder,
  });

  final int itemCount;
  final double? mainAxisExtent;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridViewSpacing,
        crossAxisSpacing: TSizes.gridViewSpacing,
        mainAxisExtent: mainAxisExtent,
        
      ),
      itemBuilder: itemBuilder,
    );
  }
}

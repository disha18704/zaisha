import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:t_store1/common/Icons/t_circular_icon.dart';
import 'package:t_store1/common/styles/shadows.dart';
import 'package:t_store1/common/texts/product_price.dart';
import 'package:t_store1/common/texts/product_title_text.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/image_strings.dart';
import 'package:t_store1/utils/constants/sizes.dart';

class TProductCardVertical extends StatelessWidget {
  final String name;
  final String brand;
  final String price;
  final String image;

  const TProductCardVertical({
    required this.name,
    required this.brand,
    required this.price,
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [TshadowStlye.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: TColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail, wishlist button , discount tag
            ClipRRect(
              borderRadius: BorderRadius.circular(TSizes.productImageRadius),
              child: Image.asset(
                image, // Replace this with your image path
                width: double.infinity,
                height: 120, // Adjust height as needed
                fit: BoxFit.cover, // You can use other BoxFit values as well
              ),
            ),

      
            const SizedBox(
              height: TSizes.spaceBtwItems / 2,
            ),
      
            Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductTitleText(
                    title: name,
                    smallSize: true,
                  ),
                  SizedBox(
                    height: TSizes.spaceBtwItems / 2,
                  ),
                  Row(
                    children: [
                      Text(
                        brand,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      const SizedBox(
                        width: TSizes.xs,
                      ),
                      const Icon(
                        Iconsax.verify,
                        color: TColors.primary,
                        size: TSizes.iconXs,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //Price
                  TProductPriceText( price:price),
                      Container(
                        decoration: const BoxDecoration(
                            color: TColors.dark,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(TSizes.cardRadiusMd),
                              bottomRight:
                                  Radius.circular(TSizes.productImageRadius),
                            )),
                        child: SizedBox(
                          width: TSizes.iconLg * 1.2,
                          height: TSizes.iconLg * 1.2,
                          child:  Center(
                            child: Icon(
                              Iconsax.add,
                              color: TColors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/image_strings.dart';
import 'package:t_store1/utils/constants/sizes.dart';

class TVeriticalImageText extends StatelessWidget {
  const TVeriticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.backgroundColor = TColors.white,
    this.onTap,
  });

  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(right: TSizes.spaceBtwItems),
        child: Column(
          children: [
            // Circular Icon
            Container(
              width: 55,
              height: 55,
              padding: const EdgeInsets.all(TSizes.sm),
              decoration: BoxDecoration(
                color: TColors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Center(
                child: Image(
                  image: AssetImage(TImages.necklaceIcon),
                  fit: BoxFit.cover,
                  color: TColors.dark,
                ),
              ),
            ),
            const SizedBox(
              height: TSizes.spaceBtwSections / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                'necklace',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.white),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

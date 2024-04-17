import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:t_store1/utils/device/device_utility.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:t_store1/utils/helpers/helper_function.dart';

class TSearchContainer extends StatelessWidget {
  const TSearchContainer({
    super.key,
    required this.text,
  this.icon,
  this.showBackground = true,
  this.showBorder = true,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode1(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
            color: showBackground ? dark ? TColors.dark : TColors.light : Colors.transparent ,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ? Border.all(color: TColors.grey): null),
        child: Row(
          children: [
            const Icon(
              Iconsax.search_normal,
              color: TColors.darkGrey,
            ),
            const SizedBox(width: TSizes.spaceBtwItems),
            Text('Search in Store',
                style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:t_store1/common/Icons/t_circular_icon.dart';
import 'package:t_store1/common/images/t_rounded.dart';
import 'package:t_store1/common/styles/shadows.dart';
import 'package:t_store1/common/texts/product_title_text.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/image_strings.dart';
import 'package:t_store1/utils/constants/sizes.dart';

class TProductPriceText extends StatelessWidget {
  const TProductPriceText({
    super.key, 
    this.currencySign  = '\$',
    required this.price, 
    this.maxLines = 1, 
    this.isLarge = false, 
    this.lineThrough = false,
  });

  final String currencySign, price;
  final int maxLines;
  final bool isLarge;
  final bool lineThrough;

  @override
  Widget build(BuildContext context) {
    return Text(
      currencySign + price,
      maxLines: maxLines,
      overflow: TextOverflow.ellipsis,
      style: isLarge 
      ? Theme.of(context).textTheme.headlineMedium!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null)
      : Theme.of(context).textTheme.titleLarge!.apply(decoration: lineThrough ? TextDecoration.lineThrough : null),
    );
  }
}

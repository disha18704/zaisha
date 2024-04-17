import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class TCartCounterIcon extends StatelessWidget {
  const TCartCounterIcon({
    Key? key,
    required this.onPressed,
    required this.iconColor,
  }) : super(key: key);

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Stack(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: const Icon(Iconsax.shopping_bag, color: TColors.white),
        ),
        Container(
          width: 10,
          height: 10,
          decoration: BoxDecoration(
            color: TColors.black.withOpacity(0.5),
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(
              '3',
              style: theme.textTheme.labelLarge!.apply(
                color: TColors.white,
                fontSizeFactor: 0.8,
              ),
            ),
          ),
        )
      ],
    );
  }
}

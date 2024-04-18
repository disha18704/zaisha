import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:t_store1/common/images/t_rounded.dart';
import 'package:t_store1/common/styles/shadows.dart';
import 'package:t_store1/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/image_strings.dart';
import 'package:t_store1/utils/constants/sizes.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:t_store1/utils/helpers/helper_function.dart';

// a custom circular icon widget with a background color.

class TCircularIcon extends StatelessWidget {
  const TCircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = TSizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: TColors.white.withOpacity(0.9),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon, color: color,size: size,)),
    );
  }
}

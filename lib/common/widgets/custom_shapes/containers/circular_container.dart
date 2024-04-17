import 'package:flutter/material.dart';
import 'package:t_store1/utils/constants/colors.dart';


class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    Key? key,
    this.child,
    this.width = 400,
    this.height = 400,
    this.radius = 0,
    this.padding = 0, // Added initializer for padding
    this.backgroundColor = TColors.white,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final Widget? child;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
      ),
      child: child,
    );
  }
}
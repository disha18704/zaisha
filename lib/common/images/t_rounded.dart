import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/image_strings.dart';
import 'package:t_store1/utils/constants/sizes.dart';


class Troundedimage extends StatelessWidget {
  const Troundedimage({
    super.key, 
    this.width = 400,
    this.height = 170, 
    required this.imageUrl, 
    this.applyImageRadius = true, 
    this.border, 
    this.backgroundColor = TColors.light,
    this.fit = BoxFit.contain,
    this.padding, 
    this.isNetworkingImage = false, 
    this.onPressed,
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final Color backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkingImage;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: border, color: backgroundColor,
          borderRadius: BorderRadius.circular(TSizes.md),
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(TSizes.md) : BorderRadius.zero,
          child: Image(
      
          fit: fit,
          image: isNetworkingImage ? NetworkImage(imageUrl) : AssetImage(imageUrl) as ImageProvider,
            
          ),
        ),
      ),
    );
  }
}

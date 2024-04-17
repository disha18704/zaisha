import 'package:flutter/material.dart';
import 'package:t_store1/utils/constants/colors.dart';
import 'package:t_store1/utils/constants/text_strings.dart';
import 'package:t_store1/utils/helpers/helper_function.dart';



class Tloginformdivider extends StatelessWidget {
  const Tloginformdivider({super.key});


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode1(context);
    return  Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                  Text(TTexts.orSignInWith.toLowerCase(),
                      style: Theme.of(context).textTheme.labelMedium),
                  Flexible(
                    child: Divider(
                      color: dark ? TColors.darkGrey : TColors.grey,
                      thickness: 0.5,
                      indent: 60,
                      endIndent: 5,
                    ),
                  ),
                ],
              );
  }
}